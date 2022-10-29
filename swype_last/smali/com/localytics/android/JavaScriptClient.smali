.class final Lcom/localytics/android/JavaScriptClient;
.super Ljava/lang/Object;
.source "JavaScriptClient.java"


# instance fields
.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/MarketingCallable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/MarketingCallable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/localytics/android/MarketingCallable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Landroid/util/SparseArray;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/JavaScriptClient;I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/localytics/android/JavaScriptClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "methodId"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Landroid/util/SparseArray;

    if-eqz v2, :cond_13

    .line 101
    iget-object v2, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    .line 102
    .local v0, "callable":Lcom/localytics/android/MarketingCallable;
    if-eqz v0, :cond_13

    .line 104
    invoke-virtual {v0, p2}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    .end local v0    # "callable":Lcom/localytics/android/MarketingCallable;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_13
    return-object v1
.end method


# virtual methods
.method final getAttributes()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method final getCallbacks()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/MarketingCallable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Landroid/util/SparseArray;

    return-object v0
.end method

.method final getCustomDimensions()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method final getIdentifiers()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method final getJavaScriptBridge()Ljava/lang/String;
    .registers 6

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/localytics/android/JavaScriptClient;->getIdentifiers()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "identifers":Ljava/lang/String;
    const-string/jumbo v1, "javascript:(function() {  var localyticsScript = document.createElement(\'script\');  localyticsScript.type = \'text/javascript\';  localyticsScript.text = \'  localytics.identifers = %s;  localytics.identifiers = %s;  localytics.customDimensions = %s;  localytics.attributes = %s;  localytics.libraryVersion = \"%s\";  localytics.tagEvent = function(event, attributes, customerValueIncrease) {     localytics.nativeTagEvent(event, JSON.stringify(attributes), JSON.stringify(customerValueIncrease));  };  localytics.setCustomDimension = function(number, value) {     if (number != null && value != null)        localytics.nativeSetCustomDimension(number, value);  };  window.open = function(url) {     if (url != null)        localytics.navigate(url);  };  localytics.close = function() {     localytics.nativeClose();  };\';  document.getElementsByTagName(\'body\')[0].appendChild(localyticsScript);})()"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/localytics/android/JavaScriptClient;->getCustomDimensions()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/localytics/android/JavaScriptClient;->getAttributes()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lcom/localytics/android/Localytics;->getLibraryVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    return-object v1
.end method

.method final getViewportAdjuster(FF)Ljava/lang/String;
    .registers 7
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F

    .prologue
    .line 69
    const-string/jumbo v0, "javascript:(function() {  var viewportNode = document.createElement(\'meta\');  viewportNode.name    = \'viewport\';  viewportNode.content = \'width=%f, height=%f, user-scalable=no, minimum-scale=.25, maximum-scale=1\';  viewportNode.id      = \'metatag\';  document.getElementsByTagName(\'head\')[0].appendChild(viewportNode);})()"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public final nativeClose()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 134
    const-string/jumbo v0, "[JavaScriptClient]: nativeClose is being called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/JavaScriptClient$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/JavaScriptClient$1;-><init>(Lcom/localytics/android/JavaScriptClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method public final nativeSetCustomDimension(JLjava/lang/String;)V
    .registers 9
    .param p1, "dimension"    # J
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 121
    const-string/jumbo v0, "[JavaScriptClient]: nativeSetCustomDimension is being called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    long-to-int v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public final nativeTagEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "customerValueIncrease"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 114
    const-string/jumbo v0, "[JavaScriptClient]: nativeTagEvent is being called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    invoke-direct {p0, v2, v0}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public final navigate(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 128
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method
