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
.field private static final rtlLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "fa"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "he"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "iw"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ur"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/widget/directional/DirectionalUtil;->rtlLanguages:[Ljava/lang/String;

    return-void
.end method

.method public static isCurrentlyRtl()Z
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isLanguageRtl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLanguageRtl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "langString"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v0, Lcom/nuance/swype/widget/directional/DirectionalUtil;->rtlLanguages:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;I)[I
    .registers 3
    .param p0, "callback"    # Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;
    .param p1, "extraSpace"    # I

    .prologue
    .line 34
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;IZ)[I
    .registers 6
    .param p0, "callback"    # Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;
    .param p1, "extraSpace"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 39
    if-eqz p2, :cond_f

    .line 40
    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;->baseCreateDrawableState(I)[I

    move-result-object v0

    .line 41
    .local v0, "state":[I
    array-length v1, v0

    sub-int/2addr v1, p1

    sget v2, Lcom/nuance/swype/input/R$attr;->state_mirrored:I

    aput v2, v0, v1

    .line 45
    :goto_e
    return-object v0

    .line 43
    .end local v0    # "state":[I
    :cond_f
    invoke-interface {p0, p1}, Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;->baseCreateDrawableState(I)[I

    move-result-object v0

    .restart local v0    # "state":[I
    goto :goto_e
.end method
