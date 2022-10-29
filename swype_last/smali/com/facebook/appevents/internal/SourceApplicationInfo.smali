.class Lcom/facebook/appevents/internal/SourceApplicationInfo;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/SourceApplicationInfo$1;,
        Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
    }
.end annotation


# static fields
.field private static final CALL_APPLICATION_PACKAGE_KEY:Ljava/lang/String; = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

.field private static final OPENED_BY_APP_LINK_KEY:Ljava/lang/String; = "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"


# instance fields
.field private callingApplicationPackage:Ljava/lang/String;

.field private openedByApplink:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "callingApplicationPackage"    # Ljava/lang/String;
    .param p2, "openedByApplink"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/facebook/appevents/internal/SourceApplicationInfo$1;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static clearSavedSourceApplicationInfoFromDisk()V
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string/jumbo v1, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method

.method public static getStoredSourceApplicatioInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 55
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 64
    :goto_12
    return-object v3

    .line 59
    :cond_13
    const-string/jumbo v4, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "callingApplicationPackage":Ljava/lang/String;
    const-string/jumbo v3, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "openedByApplink":Z
    new-instance v3, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v3, v0, v1}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;Z)V

    goto :goto_12
.end method


# virtual methods
.method public getCallingApplicationPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenedByApplink()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    const-string/jumbo v0, "Unclassified"

    .line 88
    .local v0, "openType":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    if-eqz v1, :cond_a

    .line 89
    const-string/jumbo v0, "Applink"

    .line 92
    :cond_a
    iget-object v1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .end local v0    # "openType":Ljava/lang/String;
    :cond_2f
    return-object v0
.end method

.method public writeSourceApplicationInfoToDisk()V
    .registers 4

    .prologue
    .line 99
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    iget-object v2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string/jumbo v1, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    iget-boolean v2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
.end method
