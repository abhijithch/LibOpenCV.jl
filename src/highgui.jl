function imread(filename::AbstractString)
    m = _Mat(ccall( (:imread, cv2_lib), Ptr{Void},(Ptr{UInt8},),
                    bytestring(filename)))
    total(m) == 0 && error("Could not read file. Please try giving full path.")
    return m
end

imshow(winName::AbstractString, mat::Mat) =
    ccall( (:imshow, cv2_lib), Void, (Ptr{UInt8}, Ptr{Void}),
           bytestring(winName), mat.handle)

imclose(winName::AbstractString) =
    ccall( (:imclose, cv2_lib), Void, (Ptr{UInt8},), bytestring(winName))

waitKey(delay::Int) =
    ccall( (:waitKey, cv2_lib), Void, (Int32,), delay)

namedWindow(winname::AbstractString, flags::Int64) =
    ccall((:namedWindow, cv2_lib), Void, (Ptr{UInt8}, Cint, ),
          bytestring(winname), flags)
