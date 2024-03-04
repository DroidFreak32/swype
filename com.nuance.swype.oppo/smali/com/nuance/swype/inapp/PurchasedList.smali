.class public final Lcom/nuance/swype/inapp/PurchasedList;
.super Ljava/lang/Object;
.source "PurchasedList.java"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field mPurchasedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mPurchasedMap:Ljava/util/Map;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mAppContext:Landroid/content/Context;

    .line 19
    iget-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mAppContext:Landroid/content/Context;

    const-string v1, "tme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/PurchasedList;->loadAll()V

    .line 21
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 37
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/PurchasedList;->loadAll()V

    .line 38
    return-void
.end method

.method public final loadAll()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mPurchasedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mPurchasedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/PurchasedList;->mPurchasedMap:Ljava/util/Map;

    .line 32
    return-void
.end method
