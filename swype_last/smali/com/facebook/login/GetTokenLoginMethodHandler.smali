.class Lcom/facebook/login/GetTokenLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "GetTokenLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/GetTokenLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private getTokenClient:Lcom/facebook/login/GetTokenClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$3;

    invoke-direct {v0}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;-><init>()V

    sput-object v0, Lcom/facebook/login/GetTokenLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 46
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v0}, Lcom/facebook/login/GetTokenClient;->cancel()V

    .line 57
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v0, v1}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 58
    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 60
    :cond_11
    return-void
.end method

.method complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const-string/jumbo v1, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "userId":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 137
    :cond_f
    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStart()V

    .line 139
    const-string/jumbo v1, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/facebook/login/GetTokenLoginMethodHandler$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$2;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)V

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    .line 169
    :goto_23
    return-void

    .line 166
    :cond_24
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/GetTokenLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    goto :goto_23
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string/jumbo v0, "get_token"

    return-object v0
.end method

.method getTokenCompleted(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 83
    iget-object v5, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    if-eqz v5, :cond_a

    .line 84
    iget-object v5, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v5, v6}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 86
    :cond_a
    iput-object v6, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 88
    iget-object v5, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v5}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStop()V

    .line 90
    if-eqz p2, :cond_61

    .line 91
    const-string/jumbo v5, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    .local v0, "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v4

    .line 94
    .local v4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2c

    if-eqz v4, :cond_28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 97
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/GetTokenLoginMethodHandler;->complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 120
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2b
    return-void

    .line 103
    .restart local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v2, "newPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 106
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 109
    .end local v3    # "permission":Ljava/lang/String;
    :cond_4b
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 110
    const-string/jumbo v5, "new_permissions"

    const-string/jumbo v6, ","

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/facebook/login/GetTokenLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_5e
    invoke-virtual {p1, v2}, Lcom/facebook/login/LoginClient$Request;->setPermissions(Ljava/util/Set;)V

    .line 119
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_61
    iget-object v5, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v5}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    goto :goto_2b
.end method

.method onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 123
    sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/facebook/login/GetTokenLoginMethodHandler;->createAccessTokenFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 127
    .local v1, "token":Lcom/facebook/AccessToken;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 129
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 130
    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .registers 6
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 63
    new-instance v1, Lcom/facebook/login/GetTokenClient;

    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/login/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 65
    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v1}, Lcom/facebook/login/GetTokenClient;->start()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 66
    const/4 v1, 0x0

    .line 79
    :goto_1a
    return v1

    .line 69
    :cond_1b
    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStart()V

    .line 71
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$1;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 78
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 79
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    return-void
.end method
