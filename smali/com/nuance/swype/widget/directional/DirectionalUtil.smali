.class public final Lcom/nuance/swype/widget/directional/DirectionalUtil;
.super Ljava/lang/Object;
.source "DirectionalUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;
    }
.end annotation


# static fields
.field private static final isDirectionalTextSupported:Z

.field private static final rtlLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ar"

    aput-object v3, v2, v1

    const-string v3, "fa"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "he"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "iw"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ur"

    aput-object v4, v2, v3

    sput-object v2, Lcom/nuance/swype/widget/directional/DirectionalUtil;->rtlLanguages:[Ljava/lang/String;

    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isDirectionalTextSupported:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCurrentlyRtl()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isLanguageRtl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDirectionalTextSupported()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isDirectionalTextSupported:Z

    return v0
.end method

.method public static isLanguageRtl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "langString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    sget-boolean v1, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isDirectionalTextSupported:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/swype/widget/directional/DirectionalUtil;->rtlLanguages:[Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;I)[I
    .locals 1
    .param p0, "callback"    # Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;
    .param p1, "extraSpace"    # I

    .prologue
    .line 42
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;IZ)[I
    .locals 3
    .param p0, "callback"    # Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;
    .param p1, "extraSpace"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;->baseCreateDrawableState(I)[I

    move-result-object v0

    .line 49
    .local v0, "state":[I
    array-length v1, v0

    sub-int/2addr v1, p1

    sget v2, Lcom/nuance/swype/input/R$attr;->state_mirrored:I

    aput v2, v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 51
    .end local v0    # "state":[I
    :cond_0
    invoke-interface {p0, p1}, Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;->baseCreateDrawableState(I)[I

    move-result-object v0

    .restart local v0    # "state":[I
    goto :goto_0
.end method
