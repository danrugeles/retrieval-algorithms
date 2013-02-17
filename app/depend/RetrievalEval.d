RetrievalEval.o ../depend/RetrievalEval.d : ../src/RetrievalEval.cpp \
 ../../utility/include/common_headers.hpp \
 ../../index/include/IndexManager.hpp ../../index/include/Index.hpp \
 ../../index/include/TermInfoList.hpp \
 ../../utility/include/IndexTypes.hpp ../../utility/include/Exception.hpp \
 ../../index/include/DocInfoList.hpp \
 ../../parsing/include/DocumentManager.hpp \
 ../../parsing/include/Parser.hpp ../../parsing/include/TextHandler.hpp \
 ../../utility/include/PropertyList.hpp \
 ../../utility/include/Property.hpp \
 ../../utility/include/common_headers.hpp \
 ../../utility/include/WordSet.hpp ../../utility/include/Exception.hpp \
 ../../utility/include/CollectionProps.hpp \
 ../../utility/include/lemur-platform.h \
 ../../utility/include/lemur-compat.hpp \
 ../../utility/include/lemur-platform.h \
 ../../index/include/indri/Repository.hpp \
 ../../utility/include/indri/Parameters.hpp \
 ../../utility/include/indri/XMLNode.hpp \
 ../../utility/include/indri/indri-platform.h \
 ../../utility/include/indri/delete_range.hpp \
 ../../parsing/include/indri/Transformation.hpp \
 ../../parsing/include/indri/ObjectHandler.hpp \
 ../../parsing/include/indri/ParsedDocument.hpp \
 ../../utility/include/indri/greedy_vector \
 ../../utility/include/indri/TagExtent.hpp \
 ../../parsing/include/indri/AttributeValuePair.hpp \
 ../../parsing/include/indri/TermExtent.hpp \
 ../../parsing/include/indri/MetadataPair.hpp \
 ../../index/include/indri/MemoryIndex.hpp \
 ../../index/include/indri/Index.hpp \
 ../../index/include/indri/DocListIterator.hpp \
 ../../index/include/indri/TermData.hpp \
 ../../index/include/indri/TermFieldStatistics.hpp \
 ../../utility/include/indri/RVLCompressStream.hpp \
 ../../utility/include/RVLCompress.hpp \
 ../../utility/include/indri/Buffer.hpp \
 ../../utility/include/indri/RVLDecompressStream.hpp \
 ../../index/include/indri/DocExtentListIterator.hpp \
 ../../utility/include/indri/Extent.hpp \
 ../../index/include/indri/DocListFileIterator.hpp \
 ../../index/include/indri/FieldListIterator.hpp \
 ../../index/include/indri/VocabularyIterator.hpp \
 ../../index/include/indri/DiskTermData.hpp \
 ../../utility/include/Keyfile.hpp ../../index/include/indri/TermList.hpp \
 ../../index/include/indri/FieldExtent.hpp \
 ../../index/include/indri/TermListFileIterator.hpp \
 ../../index/include/indri/DocumentDataIterator.hpp \
 ../../index/include/indri/DocumentData.hpp \
 ../../utility/include/indri/Lockable.hpp \
 ../../utility/include/indri/Mutex.hpp \
 ../../utility/include/indri/HashTable.hpp \
 ../../utility/include/indri/RegionAllocator.hpp \
 ../../index/include/indri/DocListMemoryBuilder.hpp \
 ../../index/include/indri/FieldStatistics.hpp \
 ../../index/include/indri/CorpusStatistics.hpp \
 ../../index/include/indri/DocExtentListMemoryBuilder.hpp \
 ../../utility/include/indri/ReadersWritersLock.hpp \
 ../../utility/include/indri/ScopedMonitor.hpp \
 ../../utility/include/indri/ConditionVariable.hpp \
 ../../utility/include/indri/Mutex.hpp \
 ../../utility/include/indri/ReaderLockable.hpp \
 ../../utility/include/indri/Thread.hpp \
 ../../utility/include/indri/WriterLockable.hpp \
 ../../index/include/indri/DiskIndex.hpp \
 ../../utility/include/indri/File.hpp \
 ../../utility/include/indri/BulkTree.hpp \
 ../../utility/include/indri/SequentialWriteBuffer.hpp \
 ../../utility/include/indri/InternalFileBuffer.hpp \
 ../../utility/include/indri/SequentialReadBuffer.hpp \
 ../../utility/include/indri/ref_ptr.hpp \
 ../../utility/include/indri/atomic.hpp \
 ../../index/include/indri/DeletedDocumentList.hpp \
 ../../index/include/indri/PriorListIterator.hpp \
 ../../utility/include/BasicDocStream.hpp \
 ../../utility/include/DocStream.hpp ../../utility/include/Document.hpp \
 ../../utility/include/Term.hpp ../../utility/include/DocumentProps.hpp \
 ../../utility/include/Param.hpp ../../utility/include/String.hpp \
 ../../utility/include/ByteHash.hpp ../../utility/include/String.hpp \
 ../../retrieval/include/IndexedReal.hpp \
 ../../retrieval/include/ScoreAccumulator.hpp \
 ../../retrieval/include/ResultFile.hpp ../../index/include/Index.hpp \
 ../../retrieval/include/IndexedReal.hpp ../../utility/include/ISet.hpp \
 ../../utility/include/PSet.hpp ../../retrieval/include/TextQueryRep.hpp \
 ../../retrieval/include/RetrievalMethod.hpp \
 ../../utility/include/WeightedIDSet.hpp \
 ../../retrieval/include/TextQuery.hpp ../../utility/include/Document.hpp \
 ../../retrieval/include/TermQuery.hpp ../../utility/include/Term.hpp \
 ../../utility/include/Counter.hpp ../../retrieval/include/FreqVector.hpp \
 ../../utility/include/ByteHash.hpp ../../utility/include/CSet.hpp
RetrievalEval: ../../retrieval/obj/libretrieval.a
RetrievalEval: ../../index/obj/libindex.a
RetrievalEval: ../../parsing/obj/libparsing.a
RetrievalEval: ../../utility/obj/libutility.a
RetrievalEval: ../../contrib/xpdf/obj/libxpdf.a
RetrievalEval: ../../contrib/antlr/obj/libantlr.a
RetrievalEval.o_INCPATH = -I../include $(patsubst %, -I../../%/include,  retrieval index parsing utility) $(patsubst %, -I../../contrib/%/include,  xpdf antlr)
RetrievalEval_LIBPATH = $(patsubst %, -L../../%/obj,  retrieval index parsing utility) $(patsubst %, -L../../contrib/%/obj,  xpdf antlr)
RetrievalEval_LIBFLAGS = $(patsubst %, -l%,  retrieval index parsing utility  xpdf antlr)
