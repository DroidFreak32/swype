.class public Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Language"
.end annotation


# instance fields
.field private final core:I

.field private final displayName:Ljava/lang/String;

.field private final englishName:Ljava/lang/String;

.field private final isoCodeFull:Ljava/lang/String;

.field private final isoCodeShort:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private final xt9LangId:[I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->englishName:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->displayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeShort:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    iput p6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->core:I

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->core:I

    return v0
.end method


# virtual methods
.method public getCore()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->core:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getISOCodeFull()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    return-object v0
.end method

.method public getISOCodeShort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeShort:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    array-length v1, v2

    if-lt v1, v5, :cond_2

    const/4 v1, 0x1

    aget-object v1, v2, v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    aget-object v2, v2, v5

    :goto_2
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->locale:Ljava/util/Locale;

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->locale:Ljava/util/Locale;

    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    :cond_3
    const-string v2, ""

    goto :goto_2
.end method

.method public getXT9Id()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public usesXT9Id(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    if-ne p1, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
