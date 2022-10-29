.class public Lcom/facebook/login/CustomTabLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "CustomTabLoginMethodHandler.java"


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final CHALLENGE_LENGTH:I = 0x14

.field private static final CHROME_PACKAGES:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/CustomTabLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_TABS_SERVICE_ACTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field private static final CUSTOM_TAB_REQUEST_CODE:I = 0x1


# instance fields
.field private currentPackage:Ljava/lang/String;

.field private expectedChallenge:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.chrome.dev"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CHROME_PACKAGES:[Ljava/lang/String;

    .line 239
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    .line 231
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 3
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 69
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/facebook/internal/Utility;->generateRandomString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private getChromePackage()Ljava/lang/String;
    .registers 9

    .prologue
    .line 118
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 119
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    .line 135
    :goto_6
    return-object v6

    .line 121
    :cond_7
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 122
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v5, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 125
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_4e

    .line 126
    new-instance v0, Ljava/util/HashSet;

    sget-object v6, Lcom/facebook/login/CustomTabLoginMethodHandler;->CHROME_PACKAGES:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "chromePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 128
    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 129
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_2f

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 130
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    .line 131
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    goto :goto_6

    .line 135
    .end local v0    # "chromePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_4e
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private isCustomTabsAllowed()Z
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->isCustomTabsEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasCustomTabRedirectActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isCustomTabsEnabled()Z
    .registers 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/facebook/internal/Utility;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v0

    .line 114
    .local v0, "settings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getCustomTabsEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private onCustomTabComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    const/4 v9, 0x0

    .line 153
    if-eqz p1, :cond_35

    invoke-static {}, Lcom/facebook/CustomTabMainActivity;->getRedirectUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 154
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 155
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 156
    .local v6, "values":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 158
    invoke-direct {p0, v6}, Lcom/facebook/login/CustomTabLoginMethodHandler;->validateChallengeParam(Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 159
    new-instance v7, Lcom/facebook/FacebookException;

    const-string/jumbo v8, "Invalid state parameter"

    invoke-direct {v7, v8}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p2, v9, v7}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 202
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/os/Bundle;
    :cond_35
    :goto_35
    return-void

    .line 163
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/os/Bundle;
    :cond_36
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_46

    .line 165
    const-string/jumbo v7, "error_type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_46
    const-string/jumbo v7, "error_msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "errorMessage":Ljava/lang/String;
    if-nez v3, :cond_56

    .line 170
    const-string/jumbo v7, "error_message"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_56
    if-nez v3, :cond_5f

    .line 173
    const-string/jumbo v7, "error_description"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_5f
    const-string/jumbo v7, "error_code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "errorCodeString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 177
    .local v1, "errorCode":I
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_71

    .line 179
    :try_start_6d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_70} :catch_84

    move-result v1

    .line 185
    :cond_71
    :goto_71
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    const/4 v7, -0x1

    if-ne v1, v7, :cond_87

    .line 187
    invoke-super {p0, p2, v6, v9}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_35

    .line 181
    :catch_84
    move-exception v7

    const/4 v1, -0x1

    goto :goto_71

    .line 188
    :cond_87
    if-eqz v0, :cond_a4

    const-string/jumbo v7, "access_denied"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9b

    const-string/jumbo v7, "OAuthAccessDeniedException"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 190
    :cond_9b
    new-instance v7, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v7}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v9, v7}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_35

    .line 191
    :cond_a4
    const/16 v7, 0x1069

    if-ne v1, v7, :cond_b1

    .line 192
    new-instance v7, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v7}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v9, v7}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_35

    .line 194
    :cond_b1
    new-instance v4, Lcom/facebook/FacebookRequestError;

    invoke-direct {v4, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v4, "requestError":Lcom/facebook/FacebookRequestError;
    new-instance v7, Lcom/facebook/FacebookServiceException;

    invoke-direct {v7, v4, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-super {p0, p2, v9, v7}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto/16 :goto_35
.end method

.method private validateChallengeParam(Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 211
    :try_start_1
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "stateString":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 219
    .end local v0    # "stateString":Ljava/lang/String;
    :goto_a
    return v1

    .line 215
    .restart local v0    # "stateString":Ljava/lang/String;
    :cond_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v3, "7_challenge"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1c} :catch_1e

    move-result v1

    goto :goto_a

    .line 219
    .end local v0    # "stateString":Ljava/lang/String;
    :catch_1e
    move-exception v2

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string/jumbo v0, "custom_tab"

    return-object v0
.end method

.method protected getSSODevice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string/jumbo v0, "chrome_custom_tab"

    return-object v0
.end method

.method getTokenSource()Lcom/facebook/AccessTokenSource;
    .registers 2

    .prologue
    .line 79
    sget-object v0, Lcom/facebook/AccessTokenSource;->CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 140
    if-eq p1, v1, :cond_8

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    .line 149
    :goto_7
    return v1

    .line 143
    :cond_8
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 144
    .local v0, "request":Lcom/facebook/login/LoginClient$Request;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1b

    .line 145
    sget-object v2, Lcom/facebook/CustomTabMainActivity;->EXTRA_URL:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->onCustomTabComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V

    goto :goto_7

    .line 148
    :cond_1b
    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, v0, v1, v2}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 149
    const/4 v1, 0x0

    goto :goto_7
.end method

.method protected putChallengeParam(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "param"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    const-string/jumbo v0, "7_challenge"

    iget-object v1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .registers 8
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->isCustomTabsAllowed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 90
    const/4 v3, 0x0

    .line 102
    :goto_8
    return v3

    .line 93
    :cond_9
    invoke-virtual {p0, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getParameters(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v2

    .line 94
    .local v2, "parameters":Landroid/os/Bundle;
    invoke-virtual {p0, v2, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->addExtraParameters(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v2

    .line 95
    iget-object v4, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 97
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/facebook/CustomTabMainActivity;->EXTRA_PARAMS:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    sget-object v4, Lcom/facebook/CustomTabMainActivity;->EXTRA_CHROME_PACKAGE:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v4, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Lcom/facebook/login/WebLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return-void
.end method
