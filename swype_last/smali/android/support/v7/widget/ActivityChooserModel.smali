.class Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const-class v0, Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActivityChooserModel;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActivityChooserModel;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActivityChooserModel;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502$59b42612(Landroid/support/v7/widget/ActivityChooserModel;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActivityChooserModel;

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    return v0
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .registers 5

    .prologue
    .line 743
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v1, v2, v3

    .line 744
    .local v1, "pruneCount":I
    if-gtz v1, :cond_d

    .line 754
    :cond_c
    return-void

    .line 747
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_c

    .line 749
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private readHistoricalDataImpl()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 962
    :try_start_1
    iget-object v12, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    iget-object v13, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_d6

    move-result-object v1

    .line 970
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 971
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v12, "UTF-8"

    invoke-interface {v5, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 973
    const/4 v7, 0x0

    .line 974
    .local v7, "type":I
    :goto_14
    if-eq v7, v14, :cond_1e

    const/4 v12, 0x2

    if-eq v7, v12, :cond_1e

    .line 975
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_14

    .line 978
    :cond_1e
    const-string/jumbo v12, "historical-records"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_52

    .line 979
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v13, "Share records file does not start with historical-records tag."

    invoke-direct {v12, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_34} :catch_34
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_34} :catch_79
    .catchall {:try_start_9 .. :try_end_34} :catchall_c2

    .line 1015
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_34
    move-exception v11

    .line 1016
    .local v11, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_35
    sget-object v12, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Error reading historical recrod file: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_c2

    .line 1020
    if-eqz v1, :cond_51

    .line 1022
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_d1

    .line 1028
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_51
    :goto_51
    return-void

    .line 983
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_52
    :try_start_52
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 984
    .local v2, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 987
    :cond_57
    :goto_57
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 988
    if-eq v7, v14, :cond_c9

    .line 991
    const/4 v12, 0x3

    if-eq v7, v12, :cond_57

    const/4 v12, 0x4

    if-eq v7, v12, :cond_57

    .line 994
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 995
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v12, "historical-record"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    .line 996
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v13, "Share records file not well-formed."

    invoke-direct {v12, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_79} :catch_34
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_79} :catch_79
    .catchall {:try_start_52 .. :try_end_79} :catchall_c2

    .line 1017
    .end local v2    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_79
    move-exception v3

    .line 1018
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_7a
    sget-object v12, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Error reading historical recrod file: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_c2

    .line 1020
    if-eqz v1, :cond_51

    .line 1022
    :try_start_93
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_51

    .line 1025
    :catch_97
    move-exception v12

    goto :goto_51

    .line 999
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v2    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v4    # "nodeName":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_99
    const/4 v12, 0x0

    :try_start_9a
    const-string/jumbo v13, "activity"

    invoke-interface {v5, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "activity":Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "time"

    .line 1001
    invoke-interface {v5, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1002
    .local v8, "time":J
    const/4 v12, 0x0

    const-string/jumbo v13, "weight"

    .line 1003
    invoke-interface {v5, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1004
    .local v10, "weight":F
    new-instance v6, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v6, v0, v8, v9, v10}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1005
    .local v6, "readRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_c1} :catch_34
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_c1} :catch_79
    .catchall {:try_start_9a .. :try_end_c1} :catchall_c2

    goto :goto_57

    .line 1020
    .end local v0    # "activity":Ljava/lang/String;
    .end local v2    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "readRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    .end local v7    # "type":I
    .end local v8    # "time":J
    .end local v10    # "weight":F
    :catchall_c2
    move-exception v12

    if-eqz v1, :cond_c8

    .line 1022
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_d4

    .line 1025
    :cond_c8
    :goto_c8
    throw v12

    .line 1020
    .restart local v2    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_c9
    if-eqz v1, :cond_51

    .line 1022
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_51

    .line 1025
    :catch_cf
    move-exception v12

    goto :goto_51

    .end local v2    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .restart local v11    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d1
    move-exception v12

    goto/16 :goto_51

    .end local v11    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d4
    move-exception v13

    goto :goto_c8

    .line 967
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_d6
    move-exception v12

    goto/16 :goto_51
.end method

.method private sortActivitiesIfNeeded()Z
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 673
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 675
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 676
    const/4 v0, 0x1

    .line 678
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method final addHisoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 9
    .param p1, "historicalRecord"    # Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 728
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 729
    .local v0, "added":Z
    if-eqz v0, :cond_50

    .line 730
    iput-boolean v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 731
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 2567
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v1, :cond_1c

    .line 2568
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No preceding call to #readHistoricalData"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2570
    :cond_1c
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v1, :cond_4a

    .line 2573
    iput-boolean v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 2574
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 2575
    new-instance v1, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 3043
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_51

    .line 4029
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 733
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 736
    :cond_50
    return v0

    .line 3048
    :cond_51
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4a
.end method

.method public final chooseActivity(I)Landroid/content/Intent;
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 458
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 459
    :try_start_4
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-nez v6, :cond_b

    .line 460
    monitor-exit v5

    move-object v0, v4

    .line 488
    :goto_a
    return-object v0

    .line 463
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 465
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 467
    .local v1, "chosenActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .local v2, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 472
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 474
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v6, :cond_45

    .line 476
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6}, Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity$63493815()Z

    move-result v6

    .line 479
    if-eqz v6, :cond_45

    .line 480
    monitor-exit v5

    move-object v0, v4

    goto :goto_a

    .line 484
    :cond_45
    new-instance v3, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v6, v7, v4}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 486
    .local v3, "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 488
    monitor-exit v5

    goto :goto_a

    .line 489
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v1    # "chosenActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "chosenName":Landroid/content/ComponentName;
    .end local v3    # "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_55
    move-exception v4

    monitor-exit v5
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_55

    throw v4
.end method

.method final ensureConsistentState()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 655
    .line 1688
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    if-eqz v1, :cond_5e

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_5e

    .line 1689
    iput-boolean v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 1690
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1691
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 1692
    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1693
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    .line 1694
    :goto_22
    if-ge v4, v6, :cond_38

    .line 1695
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1696
    iget-object v7, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v8, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v8, p0, v1}, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_22

    :cond_38
    move v1, v2

    .line 1711
    :goto_39
    iget-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v4, :cond_60

    iget-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v4, :cond_60

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 1712
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 1713
    iput-boolean v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1714
    iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 1715
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 656
    :goto_50
    or-int v0, v1, v2

    .line 657
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 658
    if-eqz v0, :cond_5d

    .line 659
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 660
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 662
    :cond_5d
    return-void

    .end local v0    # "stateChanged":Z
    :cond_5e
    move v1, v3

    .line 1700
    goto :goto_39

    :cond_60
    move v2, v3

    .line 1718
    goto :goto_50
.end method

.method public final getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 411
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 414
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final getActivityCount()I
    .registers 3

    .prologue
    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 399
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 7
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 425
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 426
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 428
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 429
    .local v1, "activityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1e

    .line 430
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 431
    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v3, p1, :cond_1b

    .line 432
    monitor-exit v4

    .line 435
    .end local v2    # "i":I
    :goto_1a
    return v2

    .line 429
    .restart local v2    # "i":I
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 435
    :cond_1e
    const/4 v2, -0x1

    monitor-exit v4

    goto :goto_1a

    .line 436
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v2    # "i":I
    :catchall_21
    move-exception v3

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v3
.end method

.method public final getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 513
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 519
    :goto_1a
    return-object v0

    .line 518
    :cond_1b
    monitor-exit v1

    .line 519
    const/4 v0, 0x0

    goto :goto_1a

    .line 518
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public final getHistorySize()I
    .registers 3

    .prologue
    .line 642
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 645
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
