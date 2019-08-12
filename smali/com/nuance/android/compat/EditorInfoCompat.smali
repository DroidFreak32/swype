.class public Lcom/nuance/android/compat/EditorInfoCompat;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# static fields
.field private static final IME_FLAG_NO_FULLSCREEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v1, Landroid/os/Build;

    const-string v2, "IME_FLAG_NO_FULLSCREEN"

    invoke-static {v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "EditorInfo_IME_FLAG_NO_FULLSCREEN":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "EditorInfo_IME_FLAG_NO_FULLSCREEN":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nuance/android/compat/EditorInfoCompat;->IME_FLAG_NO_FULLSCREEN:I

    .line 27
    :goto_0
    return-void

    .line 25
    .restart local v0    # "EditorInfo_IME_FLAG_NO_FULLSCREEN":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/nuance/android/compat/EditorInfoCompat;->IME_FLAG_NO_FULLSCREEN:I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static hasImeFlagNoFullscreen(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 42
    sget v0, Lcom/nuance/android/compat/EditorInfoCompat;->IME_FLAG_NO_FULLSCREEN:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
