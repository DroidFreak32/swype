.class final Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;)V
    .registers 2

    .prologue
    .line 1033
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;B)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/widget/ActivityChooserModel;

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    return-void
.end method

.method private varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 20
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1038
    const/4 v13, 0x0

    aget-object v4, p1, v13

    check-cast v4, Ljava/util/List;

    .line 1039
    .local v4, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v13, 0x1

    aget-object v5, p1, v13

    check-cast v5, Ljava/lang/String;

    .line 1044
    .local v5, "hostoryFileName":Ljava/lang/String;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$200(Landroid/support/v7/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_16} :catch_79

    move-result-object v3

    .line 1050
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    .line 1053
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v13, 0x0

    :try_start_1c
    invoke-interface {v12, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1055
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1057
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 1058
    .local v11, "recordCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_36
    if-ge v6, v11, :cond_93

    .line 1059
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 1060
    .local v10, "record":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1061
    const/4 v13, 0x0

    const-string/jumbo v14, "activity"

    iget-object v15, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1062
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 1061
    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    const/4 v13, 0x0

    const-string/jumbo v14, "time"

    iget-wide v0, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    const/4 v13, 0x0

    const-string/jumbo v14, "weight"

    iget v15, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_76} :catch_ab
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_76} :catch_da
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_76} :catch_109
    .catchall {:try_start_1c .. :try_end_76} :catchall_13a

    .line 1058
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 1045
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v10    # "record":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    .end local v11    # "recordCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_79
    move-exception v2

    .line 1046
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    const/4 v13, 0x0

    .line 1093
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_92
    return-object v13

    .line 1071
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_93
    const/4 v13, 0x0

    :try_start_94
    const-string/jumbo v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_9d} :catch_ab
    .catch Ljava/lang/IllegalStateException; {:try_start_94 .. :try_end_9d} :catch_da
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9d} :catch_109
    .catchall {:try_start_94 .. :try_end_9d} :catchall_13a

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$502$59b42612(Landroid/support/v7/widget/ActivityChooserModel;)Z

    .line 1085
    if-eqz v3, :cond_a9

    .line 1087
    :try_start_a6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_148

    .line 1093
    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :cond_a9
    :goto_a9
    const/4 v13, 0x0

    goto :goto_92

    .line 1077
    :catch_ab
    move-exception v7

    .line 1078
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_ac
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_ac .. :try_end_cb} :catchall_13a

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$502$59b42612(Landroid/support/v7/widget/ActivityChooserModel;)Z

    .line 1085
    if-eqz v3, :cond_a9

    .line 1087
    :try_start_d4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_a9

    .line 1090
    :catch_d8
    move-exception v13

    goto :goto_a9

    .line 1079
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_da
    move-exception v9

    .line 1080
    .local v9, "ise":Ljava/lang/IllegalStateException;
    :try_start_db
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fa
    .catchall {:try_start_db .. :try_end_fa} :catchall_13a

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$502$59b42612(Landroid/support/v7/widget/ActivityChooserModel;)Z

    .line 1085
    if-eqz v3, :cond_a9

    .line 1087
    :try_start_103
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_a9

    .line 1090
    :catch_107
    move-exception v13

    goto :goto_a9

    .line 1081
    .end local v9    # "ise":Ljava/lang/IllegalStateException;
    :catch_109
    move-exception v8

    .line 1082
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_10a
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_129
    .catchall {:try_start_10a .. :try_end_129} :catchall_13a

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$502$59b42612(Landroid/support/v7/widget/ActivityChooserModel;)Z

    .line 1085
    if-eqz v3, :cond_a9

    .line 1087
    :try_start_132
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_137

    goto/16 :goto_a9

    .line 1090
    :catch_137
    move-exception v13

    goto/16 :goto_a9

    .line 1084
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_13a
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v14}, Landroid/support/v7/widget/ActivityChooserModel;->access$502$59b42612(Landroid/support/v7/widget/ActivityChooserModel;)Z

    .line 1085
    if-eqz v3, :cond_147

    .line 1087
    :try_start_144
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_14b

    .line 1090
    :cond_147
    :goto_147
    throw v13

    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    :catch_148
    move-exception v13

    goto/16 :goto_a9

    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :catch_14b
    move-exception v14

    goto :goto_147
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
