.class public final Lcom/nuance/swypeconnect/ac/ACScannerFacebook;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;,
        Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookUtil;,
        Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;
    }
.end annotation


# static fields
.field private static final EDGE_ALBUMS:Ljava/lang/String; = "albums"

.field private static final EDGE_NONE:Ljava/lang/String; = "edge_none"

.field private static final EDGE_PHOTOS:Ljava/lang/String; = "photos"

.field private static final EDGE_POSTS:Ljava/lang/String; = "posts"

.field private static final EDGE_PUBLIC_FRIENDS:Ljava/lang/String; = "friends"

.field private static final EDGE_TAGGABLE_FRIENDS:Ljava/lang/String; = "taggable_friends"

.field private static final EDGE_TAGGED_PLACES:Ljava/lang/String; = "tagged_places"

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final FACEBOOK_MAX_DEFAULT:I = 0x64

.field public static final HTTP_FAILURE:I = 0x44c

.field public static final PARSE_RESPOSE_FAILURE:I = 0x44d

.field public static final PERMISSION_EDUCATION_HISTORY:Ljava/lang/String; = "user_education_history"

.field public static final PERMISSION_FRIENDS:Ljava/lang/String; = "user_friends"

.field public static final PERMISSION_LIKES:Ljava/lang/String; = "user_likes"

.field public static final PERMISSION_PHOTOS:Ljava/lang/String; = "user_photos"

.field public static final PERMISSION_POSTS:Ljava/lang/String; = "user_posts"

.field public static final PERMISSION_TAGGED_PLACES:Ljava/lang/String; = "user_tagged_places"

.field public static final PERMISSION_WORK_HISTORY:Ljava/lang/String; = "user_work_history"

.field private static final SCANNER_FACEBOOK_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_FACEBOOK_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private accessExpires:J

.field private accessToken:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private final ignore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scanTypes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lcom/nuance/swypeconnect/ac/ACScannerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->FACEBOOK:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .locals 3

    const-string/jumbo v0, "SCANNER_FACEBOOK_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$1;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$1;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerFacebook;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->scanTypes:Ljava/util/TreeSet;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "before"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "after"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "created_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cursor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "next"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "icons"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "actions"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "privacy"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->ignore:Ljava/util/List;

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->maxToProcess:I

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method private buildScanUrl(Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "me"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "edge_none"

    iget-object v2, p1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->edge:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->edge:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private extractContent(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Lorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/api/DLMConnector$ScannerBucket;",
            "Lorg/json/JSONObject;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->ignore:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "paging"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "next"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v1, Lorg/json/JSONObject;

    const-string/jumbo v0, "next"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {p0, p1, v1, p3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->extractContent(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Lorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    goto :goto_0

    :cond_2
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->currentProcess:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->currentProcess:I

    goto :goto_0

    :cond_3
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->extractContent(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Lorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    return-object v3
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessExpires(J)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method public final isSessionValid()Z
    .locals 4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessExpires(J)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method final scan()V
    .locals 18

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "scan"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_FACEBOOK:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->startScan()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->scanCoreList:[I

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v10, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    invoke-direct {v10, v2}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessToken(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    invoke-virtual {v10, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->setAccessExpires(J)V

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->maxToProcess:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->currentProcess:I

    sub-int/2addr v2, v3

    invoke-direct {v11, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->scanTypes:Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->scanTypes:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    move v3, v4

    :goto_0
    :try_start_1
    array-length v4, v2

    if-ge v7, v4, :cond_7

    aget-object v6, v2, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->buildScanUrl(Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;)Ljava/lang/String;

    move-result-object v12

    if-nez v3, :cond_0

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->isTimeBased()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->field:Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    move v6, v7

    :goto_2
    add-int/lit8 v7, v6, 0x1

    array-length v14, v2

    if-ge v7, v14, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v2, v7

    iget-object v7, v7, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->edge:Ljava/lang/String;

    iget-object v14, v3, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->edge:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    aget-object v3, v2, v6

    const-string/jumbo v7, ","

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v3, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->field:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v6, 0x44c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " FileNotFoundException-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v8}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v2, v5

    :goto_4
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->endScan(Z)V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "fields"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "limit"

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->lastRunCalendar:Ljava/util/Calendar;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->lastRunCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-string/jumbo v3, "since"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v3, "GET"

    invoke-virtual {v10, v12, v7, v3}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v11}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->extractContent(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Lorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v7, "GET"

    const/4 v12, 0x0

    invoke-static {v3, v7, v12}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$FacebookUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v11}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->extractContent(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;Lorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v2

    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v6, 0x44c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " MalformedURLException-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v8}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v2, v5

    goto/16 :goto_4

    :cond_4
    :try_start_6
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v3

    if-lez v3, :cond_5

    add-int/lit8 v7, v6, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_5
    move v2, v4

    :goto_8
    const/4 v3, 0x1

    invoke-interface {v8}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v4, v2

    move v2, v3

    goto/16 :goto_4

    :catch_2
    move-exception v2

    :goto_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v6, 0x44c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " IOException-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-interface {v8}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v2, v5

    goto/16 :goto_4

    :catch_3
    move-exception v2

    :goto_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const/16 v6, 0x44d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " JSONException-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-interface {v8}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    move v2, v5

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v2

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_5

    :catch_4
    move-exception v2

    move v4, v3

    goto :goto_a

    :catch_5
    move-exception v2

    move v4, v3

    goto :goto_9

    :catch_6
    move-exception v2

    move v4, v3

    goto/16 :goto_7

    :catch_7
    move-exception v2

    move v4, v3

    goto/16 :goto_3

    :cond_7
    move v2, v3

    goto/16 :goto_8
.end method

.method public final setAccessExpires(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessExpires:J

    return-void
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->scanTypes:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->scanTypes:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
