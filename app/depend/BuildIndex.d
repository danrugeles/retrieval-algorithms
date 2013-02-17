BuildIndex.o ../depend/BuildIndex.d : ../src/BuildIndex.cpp \
 ../../utility/include/BasicDocStream.hpp \
 ../../utility/include/common_headers.hpp \
 ../../utility/include/DocStream.hpp ../../utility/include/Document.hpp \
 ../../utility/include/Term.hpp ../../utility/include/Exception.hpp \
 ../../utility/include/DocumentProps.hpp \
 ../../parsing/include/TextHandlerManager.hpp \
 ../../parsing/include/Parser.hpp ../../parsing/include/TextHandler.hpp \
 ../../utility/include/common_headers.hpp \
 ../../utility/include/PropertyList.hpp \
 ../../utility/include/Property.hpp ../../utility/include/Exception.hpp \
 ../../utility/include/WordSet.hpp ../../parsing/include/Stopper.hpp \
 ../../parsing/include/Stemmer.hpp \
 ../../index/include/InvFPTextHandler.hpp \
 ../../parsing/include/TextHandler.hpp \
 ../../index/include/InvPushIndex.hpp ../../index/include/PushIndex.hpp \
 ../../utility/include/Term.hpp ../../utility/include/DocumentProps.hpp \
 ../../utility/include/CollectionProps.hpp \
 ../../utility/include/MemCache.hpp ../../index/include/InvFPTypes.hpp \
 ../../utility/include/IndexTypes.hpp ../../index/include/InvDocList.hpp \
 ../../index/include/DocInfoList.hpp \
 ../../utility/include/RVLCompress.hpp \
 ../../utility/include/lemur-platform.h ../../index/include/InvFPTerm.hpp \
 ../../index/include/TermInfoList.hpp \
 ../../index/include/InvIndexMerge.hpp \
 ../../utility/include/BasicCollectionProps.hpp \
 ../../utility/include/CollectionProps.hpp \
 ../../utility/include/LinkedPropertyList.hpp \
 ../../utility/include/PropertyList.hpp \
 ../../index/include/InvFPPushIndex.hpp \
 ../../index/include/InvFPDocList.hpp \
 ../../index/include/InvFPDocInfo.hpp \
 ../../index/include/InvFPTermList.hpp \
 ../../index/include/InvFPIndexMerge.hpp \
 ../../index/include/KeyfileTextHandler.hpp \
 ../../index/include/KeyfileIncIndex.hpp ../../index/include/Index.hpp \
 ../../parsing/include/DocumentManager.hpp \
 ../../utility/include/lemur-platform.h \
 ../../utility/include/lemur-compat.hpp ../../utility/include/Param.hpp \
 ../../utility/include/String.hpp ../../utility/include/ByteHash.hpp \
 ../../utility/include/Keyfile.hpp \
 ../../parsing/include/KeyfileDocMgr.hpp \
 ../../parsing/include/DocumentManager.hpp \
 ../../parsing/include/TextHandlerManager.hpp \
 ../../utility/include/Match.hpp ../../utility/include/IndexTypes.hpp \
 ../../utility/include/ReadBuffer.hpp ../../utility/include/File.hpp \
 ../../utility/include/lemur-compat.hpp \
 ../../utility/include/WriteBuffer.hpp \
 ../../utility/include/TermCache.hpp ../../utility/include/indri/Path.hpp
BuildIndex: ../../index/obj/libindex.a
BuildIndex: ../../parsing/obj/libparsing.a
BuildIndex: ../../utility/obj/libutility.a
BuildIndex: ../../contrib/xpdf/obj/libxpdf.a
BuildIndex.o_INCPATH = -I../include $(patsubst %, -I../../%/include,  index parsing utility) $(patsubst %, -I../../contrib/%/include,  xpdf)
BuildIndex_LIBPATH = $(patsubst %, -L../../%/obj,  index parsing utility) $(patsubst %, -L../../contrib/%/obj,  xpdf)
BuildIndex_LIBFLAGS = $(patsubst %, -l%,  index parsing utility  xpdf)
