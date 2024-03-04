.class public Lcom/nuance/android/compat/SuggestionSpanCompat;
.super Ljava/lang/Object;
.source "SuggestionSpanCompat.java"


# static fields
.field private static final ARGS_SuggestionSpan:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final CLASS_SuggestionSpan:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public static final FLAG_VALUE_AUTO_CORRECTION:Ljava/lang/Integer;

.field private static final SuggestionSpan_getFlags:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    const-string v0, "android.text.style.SuggestionSpan"

    invoke-static {v0}, Lcom/nuance/android/compat/CompatUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v1, "getFlags"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/SuggestionSpanCompat;->SuggestionSpan_getFlags:Ljava/lang/reflect/Method;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/android/compat/SuggestionSpanCompat;->ARGS_SuggestionSpan:[Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    sget-object v1, Lcom/nuance/android/compat/SuggestionSpanCompat;->ARGS_SuggestionSpan:[Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/SuggestionSpanCompat;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    .line 31
    sget-object v0, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v1, "FLAG_AUTO_CORRECTION"

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/nuance/android/compat/SuggestionSpanCompat;->FLAG_VALUE_AUTO_CORRECTION:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static createSpan(Landroid/content/Context;II)Landroid/text/ParcelableSpan;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "underlineColor"    # I
    .param p2, "underlineThickness"    # I

    .prologue
    const/4 v3, 0x0

    .line 35
    sget-object v2, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const/4 v2, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/nuance/android/compat/SuggestionSpanCompat;->FLAG_VALUE_AUTO_CORRECTION:Ljava/lang/Integer;

    aput-object v3, v0, v2

    .line 38
    .local v0, "args":[Ljava/lang/Object;
    sget-object v2, Lcom/nuance/android/compat/SuggestionSpanCompat;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    invoke-static {v2, v0}, Lcom/nuance/android/compat/CompatUtil;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "ss":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 45
    const-string v2, "mAutoCorrectionUnderlineColor"

    invoke-static {v1, v2, p1}, Lcom/nuance/android/compat/CompatUtil;->setFieldIntIgnoreAccess(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 46
    const-string v2, "mAutoCorrectionUnderlineThickness"

    int-to-float v3, p2

    invoke-static {v1, v2, v3}, Lcom/nuance/android/compat/CompatUtil;->setFieldFloatIgnoreAccess(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 47
    check-cast v1, Landroid/text/ParcelableSpan;

    .line 50
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "ss":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFlags(Ljava/lang/Object;)I
    .locals 2
    .param p0, "ss"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 54
    sget-object v1, Lcom/nuance/android/compat/SuggestionSpanCompat;->SuggestionSpan_getFlags:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcom/nuance/android/compat/SuggestionSpanCompat;->SuggestionSpan_getFlags:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 57
    :cond_0
    return v0
.end method

.method public static isAutoCorrectionSpan(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "ss"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/nuance/android/compat/SuggestionSpanCompat;->getFlags(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/nuance/android/compat/SuggestionSpanCompat;->FLAG_VALUE_AUTO_CORRECTION:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v0, v1

    sget-object v1, Lcom/nuance/android/compat/SuggestionSpanCompat;->FLAG_VALUE_AUTO_CORRECTION:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
