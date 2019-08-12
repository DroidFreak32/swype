.class public final Ltwitter4j/internal/json/z_T4JInternalParseUtil;
.super Ljava/lang/Object;
.source "z_T4JInternalParseUtil.java"


# static fields
.field private static final formatMapQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->formatMapQueue:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 171
    invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "dateString"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v3, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->formatMapQueue:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 104
    .local v2, "simpleDateFormats":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/text/SimpleDateFormat;>;"
    if-nez v2, :cond_0

    .line 105
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v2    # "simpleDateFormats":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/text/SimpleDateFormat;>;"
    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 106
    .restart local v2    # "simpleDateFormats":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/text/SimpleDateFormat;>;"
    sget-object v3, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->formatMapQueue:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 109
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_1

    .line 110
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 111
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 114
    :cond_1
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 119
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :goto_0
    return-object v3

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "pe":Ljava/text/ParseException;
    :try_start_2
    new-instance v3, Ltwitter4j/TwitterException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected date format("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned from twitter.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v0    # "pe":Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    .line 119
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 123
    :goto_1
    throw v3

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public static getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "EEE MMM d HH:mm:ss z yyyy"

    invoke-static {p0, p1, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "dateStr":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDouble(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)D
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 162
    invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "str2":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 166
    :goto_0
    return-wide v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 132
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 128
    invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    const-wide/16 v0, -0x1

    .line 157
    :goto_0
    return-wide v0

    .line 153
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 145
    invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p1, p0}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1, p0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getURLDecodedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 60
    invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "returnValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 44
    invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/json/HTMLEntity;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "asOfStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 80
    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-static {p0, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 82
    .local v0, "parsed":Ljava/util/Date;
    :goto_0
    return-object v0

    .line 74
    .end local v0    # "parsed":Ljava/util/Date;
    :sswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 75
    .restart local v0    # "parsed":Ljava/util/Date;
    goto :goto_0

    .line 77
    .end local v0    # "parsed":Ljava/util/Date;
    :sswitch_1
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {p0, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 78
    .restart local v0    # "parsed":Ljava/util/Date;
    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public static toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I
    .locals 3
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    const/4 v0, -0x1

    .line 211
    :goto_0
    return v0

    .line 183
    :cond_0
    const-string v2, "X-Access-Level"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "xAccessLevel":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 207
    :cond_1
    const/4 v0, 0x0

    .local v0, "accessLevel":I
    goto :goto_0

    .line 192
    .end local v0    # "accessLevel":I
    :sswitch_0
    const/4 v0, 0x1

    .line 193
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 196
    .end local v0    # "accessLevel":I
    :sswitch_1
    const/4 v0, 0x2

    .line 197
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 200
    .end local v0    # "accessLevel":I
    :sswitch_2
    const/4 v0, 0x3

    .line 201
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 204
    .end local v0    # "accessLevel":I
    :sswitch_3
    const/4 v0, 0x3

    .line 205
    .restart local v0    # "accessLevel":I
    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method
