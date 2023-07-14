.class public Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;
.super Ljava/lang/Object;
.source "MoveToFirstStrategyEmojiDecorator.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy",
        "<",
        "Lcom/nuance/swype/input/emoji/Emoji;",
        "Lcom/nuance/swype/input/emoji/Emoji;",
        ">;"
    }
.end annotation


# static fields
.field private static final PREF_EMOJI_RECENT_LIST:Ljava/lang/String; = "pref_emoji_recent_list"

.field private static final defaultRep:Ljava/lang/String; = "emoji"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "StrategyEmojiDecorator"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;)V
    .locals 0
    .param p1, "orderingStrategy"    # Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    .line 40
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->readBackupDataStore()V

    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->readFromStore()V

    .line 42
    return-void
.end method

.method private read()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v7

    .line 100
    invoke-virtual {v7}, Lcom/nuance/swype/input/AppPreferences;->getEmojiCategoryaRecentList()Ljava/lang/String;

    move-result-object v7

    .line 101
    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 103
    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v9, v7, v6

    .line 104
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 105
    .local v2, "bytes":[B
    array-length v9, v2

    if-nez v9, :cond_1

    .line 121
    .end local v2    # "bytes":[B
    :cond_0
    return-void

    .line 108
    .restart local v2    # "bytes":[B
    :cond_1
    const/4 v4, 0x0

    .line 110
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    .local v1, "byteArray":Ljava/io/ByteArrayInputStream;
    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 112
    .local v0, "base64InputStream":Landroid/util/Base64InputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .local v5, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/Emoji;

    .line 114
    .local v3, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v9}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getCache()Ljava/util/ArrayDeque;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "base64InputStream":Landroid/util/Base64InputStream;
    .end local v1    # "byteArray":Ljava/io/ByteArrayInputStream;
    .end local v3    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v5    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v6

    .line 116
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "base64InputStream":Landroid/util/Base64InputStream;
    .restart local v1    # "byteArray":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private write(Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;
    .locals 7
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .local v3, "objectOutput":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 82
    .local v2, "data":[B
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/util/Base64OutputStream;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 87
    .local v1, "b64":Landroid/util/Base64OutputStream;
    invoke-virtual {v1, v2}, Landroid/util/Base64OutputStream;->write([B)V

    .line 88
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 89
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 90
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "b64":Landroid/util/Base64OutputStream;
    .end local v2    # "data":[B
    .end local v3    # "objectOutput":Ljava/io/ObjectOutputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v5

    .line 93
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/nuance/swype/input/emoji/Emoji;)V
    .locals 1
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->add(Lcom/nuance/swype/input/emoji/Emoji;)V

    .line 47
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->add(Lcom/nuance/swype/input/emoji/Emoji;)V

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getSize()I

    move-result v0

    return v0
.end method

.method public readBackupDataStore()V
    .locals 9

    .prologue
    .line 135
    sget-object v7, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v8, "readBackupDataStore(): called  : >>>>>>>>: "

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 136
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 137
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string/jumbo v7, "pref_emoji_recent_list"

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getCache()Ljava/util/ArrayDeque;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->clear()V

    .line 141
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getEmojiRecentList()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "jsonString":Ljava/lang/String;
    const-string/jumbo v7, "pref_emoji_recent_list"

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/AppPreferences;->remove(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 148
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 149
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v2

    .line 150
    .local v2, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-nez v2, :cond_2

    .line 151
    new-instance v2, Lcom/nuance/swype/input/emoji/Emoji;

    .end local v2    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    const-string/jumbo v7, "emoji"

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8}, Lcom/nuance/swype/input/emoji/Emoji;-><init>(Ljava/lang/String;Z)V

    .line 152
    .restart local v2    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setSkinToneSupport(Z)V

    .line 153
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 155
    :cond_2
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->write(Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "objectOutput":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v2    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v5    # "objectOutput":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/AppPreferences;->setEmojiRecentCategoryList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public readFromStore()V
    .locals 5

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->read()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "readFromStore(): called  : JSONException: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public saveToStore()V
    .locals 6

    .prologue
    .line 57
    sget-object v4, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v5, "saveToStore(): called >>>>>>>>>> "

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 61
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->getCache()Ljava/util/ArrayDeque;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/Emoji;

    .line 62
    .local v1, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;->write(Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "objectOutput":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v2    # "objectOutput":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/AppPreferences;->setEmojiRecentCategoryList(Ljava/lang/String;)V

    .line 72
    return-void
.end method
