.class final enum Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LanguageChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

.field public static final enum IMPLICIT_BASED_ON_FIELD:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

.field public static final enum KEYBOARD:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

.field public static final enum LANGUAGE_CHANGE_GESTURE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

.field public static final enum LOCALE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

.field public static final enum QUICK_TOGGLE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

.field public static final enum SETTINGS:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

.field public static final enum UNSPECIFIED:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const-string/jumbo v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v4, v4}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->UNSPECIFIED:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const-string/jumbo v1, "SETTINGS"

    invoke-direct {v0, v1, v5, v5}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->SETTINGS:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const-string/jumbo v1, "KEYBOARD"

    invoke-direct {v0, v1, v6, v6}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->KEYBOARD:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const-string/jumbo v1, "LOCALE"

    invoke-direct {v0, v1, v7, v7}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->LOCALE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const-string/jumbo v1, "QUICK_TOGGLE"

    invoke-direct {v0, v1, v8, v8}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->QUICK_TOGGLE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const-string/jumbo v1, "LANGUAGE_CHANGE_GESTURE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->LANGUAGE_CHANGE_GESTURE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const-string/jumbo v1, "IMPLICIT_BASED_ON_FIELD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->IMPLICIT_BASED_ON_FIELD:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->UNSPECIFIED:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->SETTINGS:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->KEYBOARD:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->LOCALE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->QUICK_TOGGLE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->LANGUAGE_CHANGE_GESTURE:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->IMPLICIT_BASED_ON_FIELD:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->id:I

    return-void
.end method

.method static from(I)Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;
    .registers 6

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->values()[Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->id:I

    if-ne v4, p0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->UNSPECIFIED:Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    return-object v0
.end method
