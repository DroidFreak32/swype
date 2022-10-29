.class public final Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;
.super Ljava/lang/Object;
.source "PreferenceStoreImpl.java"

# interfaces
.implements Lio/fabric/sdk/android/services/persistence/PreferenceStore;


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferenceName:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_e

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_e
    iput-object p1, p0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;->preferenceName:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;->preferenceName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 4
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;

    .prologue
    .line 27
    .line 1094
    iget-object v0, p1, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final get()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final save(Landroid/content/SharedPreferences$Editor;)Z
    .registers 4
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 55
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_a
    return v0

    :cond_b
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_a
.end method
