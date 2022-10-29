.class public Lcom/nuance/android/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_19

    .line 15
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 16
    .local v0, "usmgr":Landroid/os/UserManager;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_19

    .line 17
    :cond_17
    const/4 v1, 0x0

    .line 20
    .end local v0    # "usmgr":Landroid/os/UserManager;
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x1

    goto :goto_18
.end method
