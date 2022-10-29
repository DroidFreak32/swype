.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createDataUploadCmd(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V
    .registers 2

    .prologue
    .line 739
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 744
    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_syncUpload:Ljava/lang/Object;
    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$300()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 746
    :try_start_5
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_genericCommand:Lcom/nuance/nmdp/speechkit/CommandProxyBase;
    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$500(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    move-result-object v5

    const-string/jumbo v7, "DATA_BLOCK"

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_datablock:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
    invoke-static {v8}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$400(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getDataBlockDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    .line 749
    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 750
    .local v3, "doneDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 752
    .local v1, "checksums":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    const-string/jumbo v5, "num_data_blocks"

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    .line 753
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_datablock:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$400(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getDataList()Ljava/util/Vector;

    move-result-object v2

    .line 754
    .local v2, "datalist":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/nuance/nmdp/speechkit/util/dataupload/Data;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_91

    .line 755
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 756
    .local v0, "checksum":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    const-string/jumbo v7, "id"

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string/jumbo v7, "type"

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->getTypeStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string/jumbo v5, "current_checksum"

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_currentChecksum:I
    invoke-static {v7}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$600(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v5, "new_checksum"

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_newChecksum:I
    invoke-static {v7}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$700(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v5, "algorithm_id"

    const-string/jumbo v7, "MD5"

    invoke-virtual {v0, v5, v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 754
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 763
    .end local v0    # "checksum":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :cond_91
    const-string/jumbo v5, "checksums"

    invoke-virtual {v3, v5, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 764
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_genericCommand:Lcom/nuance/nmdp/speechkit/CommandProxyBase;
    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$500(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    move-result-object v5

    const-string/jumbo v7, "UPLOAD_DONE"

    invoke-virtual {v5, v7, v3}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    .line 766
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    const/4 v7, 0x1

    # setter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isCommandInit:Z
    invoke-static {v5, v7}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$802(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Z)Z

    .line 767
    # getter for: Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_syncUpload:Ljava/lang/Object;
    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$300()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 768
    monitor-exit v6

    return-void

    .end local v1    # "checksums":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .end local v2    # "datalist":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/nuance/nmdp/speechkit/util/dataupload/Data;>;"
    .end local v3    # "doneDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .end local v4    # "i":I
    :catchall_b2
    move-exception v5

    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_5 .. :try_end_b4} :catchall_b2

    throw v5
.end method
