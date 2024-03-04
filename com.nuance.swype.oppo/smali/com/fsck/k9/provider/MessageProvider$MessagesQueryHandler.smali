.class public final Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessagesQueryHandler"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/provider/MessageProvider;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resolveMessageExtractors([Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 6
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 304
    .local v1, "extractors":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/fsck/k9/provider/MessageProvider$FieldExtractor<Lcom/fsck/k9/activity/MessageInfoHolder;*>;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, p0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 306
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    const-string v5, "_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$IdExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$IdExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const-string v5, "_count"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 316
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;

    invoke-direct {v5, p1}, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;-><init>(I)V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 318
    :cond_2
    const-string v5, "subject"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 320
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$SubjectExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$SubjectExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 322
    :cond_3
    const-string v5, "sender"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 324
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 326
    :cond_4
    const-string v5, "date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 328
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$SendDateExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$SendDateExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 330
    :cond_5
    const-string v5, "preview"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 332
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$PreviewExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$PreviewExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 334
    :cond_6
    const-string v5, "uri"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 336
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$UriExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$UriExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 338
    :cond_7
    const-string v5, "delUri"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 340
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$DeleteUriExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$DeleteUriExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
    :cond_8
    const-string v5, "account"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 344
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 346
    :cond_9
    const-string v5, "id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 348
    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;

    invoke-direct {v5}, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;-><init>()V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 351
    .end local v2    # "field":Ljava/lang/String;
    :cond_a
    return-object v1
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "inbox_messages/"

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v1, Lcom/fsck/k9/SearchAccount;

    iget-object v2, p0, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v2}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    invoke-direct {v1}, Lcom/fsck/k9/SearchAccount;-><init>()V

    sget-object v2, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;

    iget-object v4, p0, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;-><init>(Lcom/fsck/k9/provider/MessageProvider;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v2, v1, v3}, Lcom/fsck/k9/controller/MessagingController;->searchLocalMessages$63d5ea0f(Lcom/fsck/k9/SearchSpecification;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/fsck/k9/activity/MessageList$ReverseComparator;

    new-instance v2, Lcom/fsck/k9/activity/MessageList$DateComparator;

    invoke-direct {v2}, Lcom/fsck/k9/activity/MessageList$DateComparator;-><init>()V

    invoke-direct {v1, v2}, Lcom/fsck/k9/activity/MessageList$ReverseComparator;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/fsck/k9/provider/MessageProvider;->access$000()[Ljava/lang/String;

    move-result-object p2

    .end local p2    # "projection":[Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->resolveMessageExtractors([Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageInfoHolder;

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;

    invoke-interface {v1, v0}, Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v5
.end method
