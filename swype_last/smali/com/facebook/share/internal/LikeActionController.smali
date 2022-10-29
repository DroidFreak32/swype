.class public Lcom/facebook/share/internal/LikeActionController;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeActionController$12;,
        Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$RequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;,
        Lcom/facebook/share/internal/LikeActionController$CreationCallback;
    }
.end annotation


# static fields
.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_ERROR"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_RESET:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_RESET"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_UPDATED:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.UPDATED"

.field public static final ACTION_OBJECT_ID_KEY:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.OBJECT_ID"

.field private static final ERROR_CODE_OBJECT_ALREADY_LIKED:I = 0xdad

.field public static final ERROR_INVALID_OBJECT_ID:Ljava/lang/String; = "Invalid Object Id"

.field public static final ERROR_PUBLISH_ERROR:Ljava/lang/String; = "Unable to publish the like/unlike action"

.field private static final JSON_BOOL_IS_OBJECT_LIKED_KEY:Ljava/lang/String; = "is_object_liked"

.field private static final JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE:Ljava/lang/String; = "facebook_dialog_analytics_bundle"

.field private static final JSON_INT_OBJECT_TYPE_KEY:Ljava/lang/String; = "object_type"

.field private static final JSON_INT_VERSION_KEY:Ljava/lang/String; = "com.facebook.share.internal.LikeActionController.version"

.field private static final JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY:Ljava/lang/String; = "like_count_string_without_like"

.field private static final JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY:Ljava/lang/String; = "like_count_string_with_like"

.field private static final JSON_STRING_OBJECT_ID_KEY:Ljava/lang/String; = "object_id"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY:Ljava/lang/String; = "social_sentence_without_like"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY:Ljava/lang/String; = "social_sentence_with_like"

.field private static final JSON_STRING_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final LIKE_ACTION_CONTROLLER_STORE:Ljava/lang/String; = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

.field private static final LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY:Ljava/lang/String; = "OBJECT_SUFFIX"

.field private static final LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY:Ljava/lang/String; = "PENDING_CONTROLLER_KEY"

.field private static final LIKE_ACTION_CONTROLLER_VERSION:I = 0x3

.field private static final LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY:Ljava/lang/String; = "like_count_string"

.field private static final LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY:Ljava/lang/String; = "object_is_liked"

.field private static final LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY:Ljava/lang/String; = "social_sentence"

.field private static final LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final MAX_CACHE_SIZE:I = 0x80

.field private static final MAX_OBJECT_SUFFIX:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/share/internal/LikeActionController;",
            ">;"
        }
    .end annotation
.end field

.field private static controllerDiskCache:Lcom/facebook/internal/FileLruCache;

.field private static diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static isInitialized:Z

.field private static mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static objectIdForPendingController:Ljava/lang/String;

.field private static volatile objectSuffix:I


# instance fields
.field private appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private facebookDialogAnalyticsBundle:Landroid/os/Bundle;

.field private isObjectLiked:Z

.field private isObjectLikedOnServer:Z

.field private isPendingLikeOrUnlike:Z

.field private likeCountStringWithLike:Ljava/lang/String;

.field private likeCountStringWithoutLike:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private objectIsPage:Z

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private socialSentenceWithLike:Ljava/lang/String;

.field private socialSentenceWithoutLike:Ljava/lang/String;

.field private unlikeToken:Ljava/lang/String;

.field private verifiedObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 76
    const-class v0, Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    .line 121
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 3
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 602
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 603
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/LikeActionController;IILandroid/content/Intent;)V
    .registers 4
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusAsync()V

    return-void
.end method

.method static synthetic access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishAgainIfNeeded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/facebook/share/internal/LikeActionController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method static synthetic access$2600(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "x2"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 61
    sput p0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Lcom/facebook/internal/FileLruCache;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    return-object v0
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 3
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz p0, :cond_18

    .line 583
    if-nez p2, :cond_e

    .line 584
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "data":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 587
    .restart local p2    # "data":Landroid/os/Bundle;
    :cond_e
    const-string/jumbo v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeActionController;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_18
    if-eqz p2, :cond_1d

    .line 591
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 593
    :cond_1d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 595
    return-void
.end method

.method private canUseOGPublish()Z
    .registers 4

    .prologue
    .line 968
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 971
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    :goto_22
    return v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private clearState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 952
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method private static createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 7
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 261
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 262
    .local v0, "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    if-eqz v0, :cond_a

    .line 264
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 289
    :goto_9
    return-void

    .line 269
    :cond_a
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 271
    if-nez v0, :cond_18

    .line 272
    new-instance v0, Lcom/facebook/share/internal/LikeActionController;

    .end local v0    # "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 273
    .restart local v0    # "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 277
    :cond_18
    invoke-static {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V

    .line 280
    move-object v1, v0

    .line 281
    .local v1, "controllerToRefresh":Lcom/facebook/share/internal/LikeActionController;
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$2;

    invoke-direct {v3, v1}, Lcom/facebook/share/internal/LikeActionController$2;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    goto :goto_9
.end method

.method private static deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 8
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, "controller":Lcom/facebook/share/internal/LikeActionController;
    const/4 v4, 0x0

    .line 440
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "cacheKey":Ljava/lang/String;
    sget-object v5, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v5, v0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 442
    if-eqz v4, :cond_1c

    .line 443
    invoke-static {v4}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "controllerJsonString":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 445
    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_22
    .catchall {:try_start_2 .. :try_end_1b} :catchall_32

    move-result-object v1

    .line 452
    .end local v2    # "controllerJsonString":Ljava/lang/String;
    :cond_1c
    if-eqz v4, :cond_21

    .line 453
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 457
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v1

    .line 448
    :catch_22
    move-exception v3

    .line 449
    .local v3, "e":Ljava/io/IOException;
    :try_start_23
    sget-object v5, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to deserialize controller from disk"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_32

    .line 450
    const/4 v1, 0x0

    .line 452
    if-eqz v4, :cond_21

    .line 453
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_21

    .line 452
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_32
    move-exception v5

    if-eqz v4, :cond_38

    .line 453
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_38
    throw v5
.end method

.method private static deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 9
    .param p0, "controllerJsonString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 464
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    .local v2, "controllerJson":Lorg/json/JSONObject;
    const-string/jumbo v6, "com.facebook.share.internal.LikeActionController.version"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 466
    const/4 v7, 0x3

    if-eq v6, v7, :cond_12

    .line 505
    .end local v2    # "controllerJson":Lorg/json/JSONObject;
    :cond_11
    :goto_11
    return-object v1

    .line 472
    .restart local v2    # "controllerJson":Lorg/json/JSONObject;
    :cond_12
    const-string/jumbo v6, "object_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "objectId":Ljava/lang/String;
    const-string/jumbo v6, "object_type"

    sget-object v7, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v7}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 477
    .local v5, "objectTypeInt":I
    new-instance v1, Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v5}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 483
    .local v1, "controller":Lcom/facebook/share/internal/LikeActionController;
    const-string/jumbo v6, "like_count_string_with_like"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 485
    const-string/jumbo v6, "like_count_string_without_like"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 487
    const-string/jumbo v6, "social_sentence_with_like"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 489
    const-string/jumbo v6, "social_sentence_without_like"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 491
    const-string/jumbo v6, "is_object_liked"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 492
    const-string/jumbo v6, "unlike_token"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 494
    const-string/jumbo v6, "facebook_dialog_analytics_bundle"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 496
    .local v0, "analyticsJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_11

    .line 497
    invoke-static {v0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_79} :catch_7a

    goto :goto_11

    .line 500
    .end local v0    # "analyticsJSON":Lorg/json/JSONObject;
    .end local v1    # "controller":Lcom/facebook/share/internal/LikeActionController;
    .end local v2    # "controllerJson":Lorg/json/JSONObject;
    .end local v4    # "objectId":Ljava/lang/String;
    .end local v5    # "objectTypeInt":I
    :catch_7a
    move-exception v3

    .line 501
    .local v3, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Unable to deserialize controller from JSON"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    const/4 v1, 0x0

    .restart local v1    # "controller":Lcom/facebook/share/internal/LikeActionController;
    goto :goto_11
.end method

.method private fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
    .registers 7
    .param p1, "completionHandler"    # Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

    .prologue
    .line 1199
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1200
    if-eqz p1, :cond_d

    .line 1201
    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    .line 1244
    :cond_d
    :goto_d
    return-void

    .line 1207
    :cond_e
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v0, p0, v3, v4}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1209
    .local v0, "objectIdRequest":Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v1, p0, v3, v4}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1212
    .local v1, "pageIdRequest":Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1213
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1214
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1216
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$11;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$11;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1243
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_d
.end method

.method private getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_e

    .line 700
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 702
    :cond_e
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    return-object v0
.end method

.method private static getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "accessTokenPortion":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 549
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_b

    .line 550
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 552
    :cond_b
    if-eqz v1, :cond_11

    .line 557
    invoke-static {v1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    :cond_11
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v3, "%s|%s|com.fb.sdk.like|%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, ""

    invoke-static {v1, v6}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 6
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 209
    sget-boolean v1, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z

    if-nez v1, :cond_7

    .line 210
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->performFirstInitialize()V

    .line 213
    :cond_7
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 214
    .local v0, "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    if-eqz v0, :cond_11

    .line 216
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 221
    :goto_10
    return-void

    .line 218
    :cond_11
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    goto :goto_10
.end method

.method private static getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 6
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "cacheKey":Ljava/lang/String;
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/internal/LikeActionController;

    .line 391
    .local v1, "controller":Lcom/facebook/share/internal/LikeActionController;
    if-eqz v1, :cond_19

    .line 393
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 396
    :cond_19
    return-object v1
.end method

.method private getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;
    .registers 4
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 856
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$6;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static handleOnActivityResult(IILandroid/content/Intent;)Z
    .registers 7
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 161
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 162
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    const-string/jumbo v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "PENDING_CONTROLLER_KEY"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 172
    :cond_1e
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 196
    :goto_26
    return v0

    .line 177
    :cond_27
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$1;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 196
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private static invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 5
    .param p0, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;
    .param p1, "controller"    # Lcom/facebook/share/internal/LikeActionController;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 327
    if-nez p0, :cond_3

    .line 337
    :goto_2
    return-void

    .line 331
    :cond_3
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/share/internal/LikeActionController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$4;-><init>(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 1247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1248
    .local v0, "logParams":Landroid/os/Bundle;
    const-string/jumbo v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string/jumbo v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string/jumbo v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    const-string/jumbo v2, "fb_like_control_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1253
    return-void
.end method

.method private logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1257
    .local v0, "logParams":Landroid/os/Bundle;
    if-eqz p2, :cond_17

    .line 1258
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v1

    .line 1259
    .local v1, "requestResult":Lorg/json/JSONObject;
    if-eqz v1, :cond_17

    .line 1260
    const-string/jumbo v2, "error"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    .end local v1    # "requestResult":Lorg/json/JSONObject;
    :cond_17
    invoke-direct {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1266
    return-void
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    .line 852
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->clearState()V

    .line 853
    return-void
.end method

.method private static declared-synchronized performFirstInitialize()V
    .registers 4

    .prologue
    .line 292
    const-class v1, Lcom/facebook/share/internal/LikeActionController;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4d

    if-eqz v0, :cond_9

    .line 321
    :goto_7
    monitor-exit v1

    return-void

    .line 296
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    .line 298
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    const-string/jumbo v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    const-string/jumbo v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    .line 304
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    .line 306
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V

    .line 308
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$3;

    invoke-direct {v2}, Lcom/facebook/share/internal/LikeActionController$3;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_4d

    goto :goto_7

    .line 292
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p3, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, "analyticsEvent":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 800
    const-string/jumbo v0, "fb_like_control_did_present_dialog"

    .line 815
    :goto_b
    if-eqz v0, :cond_41

    .line 816
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "objectTypeString":Ljava/lang/String;
    :goto_17
    new-instance v3, Lcom/facebook/share/internal/LikeContent$Builder;

    invoke-direct {v3}, Lcom/facebook/share/internal/LikeContent$Builder;-><init>()V

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/share/internal/LikeContent$Builder;->build()Lcom/facebook/share/internal/LikeContent;

    move-result-object v1

    .line 824
    .local v1, "likeContent":Lcom/facebook/share/internal/LikeContent;
    if-eqz p2, :cond_68

    .line 825
    new-instance v3, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {v3, p2}, Lcom/facebook/share/internal/LikeDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v3, v1}, Lcom/facebook/share/internal/LikeDialog;->show(Ljava/lang/Object;)V

    .line 830
    :goto_34
    invoke-direct {p0, p3}, Lcom/facebook/share/internal/LikeActionController;->saveState(Landroid/os/Bundle;)V

    .line 832
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v3

    const-string/jumbo v4, "fb_like_control_did_present_dialog"

    invoke-virtual {v3, v4, v5, p3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 837
    .end local v1    # "likeContent":Lcom/facebook/share/internal/LikeContent;
    .end local v2    # "objectTypeString":Ljava/lang/String;
    :cond_41
    return-void

    .line 801
    :cond_42
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 802
    const-string/jumbo v0, "fb_like_control_did_present_fallback_dialog"

    goto :goto_b

    .line 805
    :cond_4c
    const-string/jumbo v3, "present_dialog"

    invoke-direct {p0, v3, p3}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 806
    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Cannot show the Like Dialog on this device."

    invoke-static {v3, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string/jumbo v3, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v5, v3}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    goto :goto_b

    .line 816
    :cond_61
    sget-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    .line 827
    .restart local v1    # "likeContent":Lcom/facebook/share/internal/LikeContent;
    .restart local v2    # "objectTypeString":Ljava/lang/String;
    :cond_68
    new-instance v3, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {v3, p1}, Lcom/facebook/share/internal/LikeDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v1}, Lcom/facebook/share/internal/LikeDialog;->show(Ljava/lang/Object;)V

    goto :goto_34
.end method

.method private publishAgainIfNeeded(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    if-eq v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    invoke-direct {p0, v0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1194
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    .line 1196
    :cond_16
    return-void

    .line 1194
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private publishDidError(Z)V
    .registers 5
    .param p1, "oldLikeState"    # Z

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string/jumbo v2, "Unable to publish the like/unlike action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string/jumbo v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 738
    return-void
.end method

.method private publishLikeAsync(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 981
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController$7;-><init>(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    .line 1033
    return-void
.end method

.method private publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z
    .registers 5
    .param p1, "shouldLikeObject"    # Z
    .param p2, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "requested":Z
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 710
    if-eqz p1, :cond_e

    .line 711
    const/4 v0, 0x1

    .line 712
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V

    .line 719
    :cond_d
    :goto_d
    return v0

    .line 713
    :cond_e
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 714
    const/4 v0, 0x1

    .line 715
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V

    goto :goto_d
.end method

.method private publishUnlikeAsync(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 1036
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 1039
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1040
    .local v0, "requestBatch":Lcom/facebook/GraphRequestBatch;
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 1042
    .local v1, "unlikeRequest":Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1043
    new-instance v2, Lcom/facebook/share/internal/LikeActionController$8;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$8;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1068
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1069
    return-void
.end method

.method private static putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V
    .registers 6
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "controllerForObject"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "cacheKey":Ljava/lang/String;
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 384
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void
.end method

.method private refreshStatusAsync()V
    .registers 2

    .prologue
    .line 1072
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1073
    if-nez v0, :cond_a

    .line 1077
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V

    .line 1128
    :goto_9
    return-void

    .line 1081
    :cond_a
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$9;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/LikeActionController$9;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    goto :goto_9
.end method

.method private refreshStatusViaService()V
    .registers 6

    .prologue
    .line 1131
    new-instance v1, Lcom/facebook/share/internal/LikeStatusClient;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/LikeStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .local v1, "likeStatusClient":Lcom/facebook/share/internal/LikeStatusClient;
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeStatusClient;->start()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1187
    :goto_15
    return-void

    .line 1139
    :cond_16
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$10;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/LikeActionController$10;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    .line 1186
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    goto :goto_15
.end method

.method private static registerAccessTokenTracker()V
    .registers 1

    .prologue
    .line 344
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$5;

    invoke-direct {v0}, Lcom/facebook/share/internal/LikeActionController$5;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 375
    return-void
.end method

.method private saveState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 943
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 946
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 947
    return-void
.end method

.method private static serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 5
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 404
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "controllerJson":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 408
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;

    invoke-direct {v3, v0, v1}, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 411
    :cond_20
    return-void
.end method

.method private static serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "cacheKey"    # Ljava/lang/String;
    .param p1, "controllerJson"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v2, p0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_14
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    .line 425
    if-eqz v1, :cond_13

    .line 426
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 429
    :cond_13
    :goto_13
    return-void

    .line 422
    :catch_14
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    :try_start_15
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to serialize controller to disk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_23

    .line 425
    if-eqz v1, :cond_13

    .line 426
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_13

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_23
    move-exception v2

    if-eqz v1, :cond_29

    .line 426
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_29
    throw v2
.end method

.method private static serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 6
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 509
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 511
    .local v1, "controllerJson":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v3, "com.facebook.share.internal.LikeActionController.version"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string/jumbo v3, "object_id"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string/jumbo v3, "object_type"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    const-string/jumbo v3, "like_count_string_with_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string/jumbo v3, "like_count_string_without_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string/jumbo v3, "social_sentence_with_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string/jumbo v3, "social_sentence_without_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string/jumbo v3, "is_object_liked"

    iget-boolean v4, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo v3, "unlike_token"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_62

    .line 529
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 532
    .local v0, "analyticsJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_62

    .line 533
    const-string/jumbo v3, "facebook_dialog_analytics_bundle"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_62} :catch_67

    .line 543
    .end local v0    # "analyticsJSON":Lorg/json/JSONObject;
    :cond_62
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_66
    return-object v3

    .line 538
    :catch_67
    move-exception v2

    .line 539
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to serialize controller to JSON"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/4 v3, 0x0

    goto :goto_66
.end method

.method private static storeObjectIdForPendingController(Ljava/lang/String;)V
    .registers 4
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 956
    sput-object p0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 957
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 959
    const-string/jumbo v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PENDING_CONTROLLER_KEY"

    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 965
    return-void
.end method

.method private updateLikeState(Z)V
    .registers 9
    .param p1, "isObjectLiked"    # Z

    .prologue
    .line 741
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method private updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "isObjectLiked"    # Z
    .param p2, "likeCountStringWithLike"    # Ljava/lang/String;
    .param p3, "likeCountStringWithoutLike"    # Ljava/lang/String;
    .param p4, "socialSentenceWithLike"    # Ljava/lang/String;
    .param p5, "socialSentenceWithoutLike"    # Ljava/lang/String;
    .param p6, "unlikeToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 756
    invoke-static {p2, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 757
    invoke-static {p3, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 759
    invoke-static {p4, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 760
    invoke-static {p5, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 762
    invoke-static {p6, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 764
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-ne p1, v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    invoke-static {p5, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-static {p6, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_41
    const/4 v0, 0x1

    .line 777
    :goto_42
    if-nez v0, :cond_47

    .line 791
    :goto_44
    return-void

    .line 764
    :cond_45
    const/4 v0, 0x0

    goto :goto_42

    .line 781
    :cond_47
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 782
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 783
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 784
    iput-object p4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 785
    iput-object p5, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 786
    iput-object p6, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 788
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 790
    const-string/jumbo v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    goto :goto_44
.end method

.method private static verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 9
    .param p0, "likeActionController"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 227
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-static {p1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->getMostSpecificObjectType(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    .line 230
    .local v0, "bestObjectType":Lcom/facebook/share/widget/LikeView$ObjectType;
    const/4 v1, 0x0

    .line 231
    .local v1, "error":Lcom/facebook/FacebookException;
    if-nez v0, :cond_2e

    .line 234
    new-instance v1, Lcom/facebook/FacebookException;

    .end local v1    # "error":Lcom/facebook/FacebookException;
    const-string/jumbo v2, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v5}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    const/4 p0, 0x0

    .line 245
    :goto_2a
    invoke-static {p2, p0, v1}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    .line 246
    return-void

    .line 242
    :cond_2e
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    goto :goto_2a
.end method


# virtual methods
.method public getLikeCountString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    goto :goto_6
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialSentence()Ljava/lang/String;
    .registers 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    goto :goto_6
.end method

.method public isObjectLiked()Z
    .registers 2

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method public shouldEnableView()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 647
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 662
    :cond_e
    :goto_e
    return v1

    .line 650
    :cond_f
    iget-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    sget-object v4, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne v3, v4, :cond_1b

    :cond_19
    move v1, v2

    .line 655
    goto :goto_e

    .line 661
    :cond_1b
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 662
    .local v0, "token":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "publish_actions"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_34
    move v1, v2

    goto :goto_e
.end method

.method public toggleLike(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .param p3, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    iget-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-nez v3, :cond_20

    move v0, v1

    .line 676
    .local v0, "shouldLikeObject":Z
    :goto_7
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 678
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 679
    iget-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    if-eqz v3, :cond_22

    .line 683
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    const-string/jumbo v2, "fb_like_control_did_undo_quickly"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 696
    :cond_1f
    :goto_1f
    return-void

    .end local v0    # "shouldLikeObject":Z
    :cond_20
    move v0, v2

    .line 674
    goto :goto_7

    .line 687
    .restart local v0    # "shouldLikeObject":Z
    :cond_22
    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 690
    if-nez v0, :cond_31

    :goto_2a
    invoke-direct {p0, v1}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 694
    :cond_2d
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    goto :goto_1f

    :cond_31
    move v1, v2

    .line 690
    goto :goto_2a
.end method
