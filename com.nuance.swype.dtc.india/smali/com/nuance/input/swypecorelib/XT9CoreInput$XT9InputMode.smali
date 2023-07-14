.class public final enum Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
.super Ljava/lang/Enum;
.source "XT9CoreInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/XT9CoreInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XT9InputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum CHUNJIIN:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum CONVERSION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum DEFAULT:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum NARAGATGUL:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum TELEX:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum TRANSLITERATION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum VEGA:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

.field public static final enum VNI:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->DEFAULT:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 45
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "VNI"

    invoke-direct {v0, v1, v5, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VNI:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 49
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "TELEX"

    invoke-direct {v0, v1, v6, v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TELEX:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 53
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "TRANSLITERATION"

    invoke-direct {v0, v1, v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TRANSLITERATION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 57
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "CHUNJIIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->CHUNJIIN:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 61
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "NARAGATGUL"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->NARAGATGUL:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 65
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "VEGA"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VEGA:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 69
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    const-string/jumbo v1, "CONVERSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v7}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->CONVERSION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->DEFAULT:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VNI:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TELEX:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TRANSLITERATION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->CHUNJIIN:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->NARAGATGUL:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VEGA:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->CONVERSION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->$VALUES:[Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->value:I

    .line 79
    return-void
.end method

.method static valueOf(I)Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    .locals 1
    .param p0, "inputMode"    # I

    .prologue
    .line 82
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 83
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VNI:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 97
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 85
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TELEX:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 87
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->CHUNJIIN:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    goto :goto_0

    .line 88
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 89
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->NARAGATGUL:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    goto :goto_0

    .line 90
    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    .line 91
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VEGA:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    goto :goto_0

    .line 92
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 93
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TRANSLITERATION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    goto :goto_0

    .line 94
    :cond_5
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    .line 95
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->CONVERSION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    goto :goto_0

    .line 97
    :cond_6
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->DEFAULT:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->$VALUES:[Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->value:I

    return v0
.end method
