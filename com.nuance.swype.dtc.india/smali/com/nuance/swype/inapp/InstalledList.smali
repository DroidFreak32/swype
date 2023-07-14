.class public final Lcom/nuance/swype/inapp/InstalledList;
.super Ljava/lang/Object;
.source "InstalledList.java"


# instance fields
.field public mInstalledMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/inapp/InstalledList;->mInstalledMap:Ljava/util/Map;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, "mAppContext":Landroid/content/Context;
    const-string/jumbo v1, "installed_themes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/inapp/InstalledList;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/InstalledList;->loadAll()V

    .line 20
    return-void
.end method


# virtual methods
.method public final loadAll()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/inapp/InstalledList;->mInstalledMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/inapp/InstalledList;->mInstalledMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InstalledList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/InstalledList;->mInstalledMap:Ljava/util/Map;

    .line 32
    return-void
.end method
