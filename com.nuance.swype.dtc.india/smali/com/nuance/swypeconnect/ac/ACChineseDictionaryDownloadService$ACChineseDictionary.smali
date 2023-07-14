.class public final Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ACChineseDictionary"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "-"


# instance fields
.field private dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDictionary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getDictionary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getCategoryTranslated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getId()I

    move-result v0

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v1}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v1}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v1}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLanguage()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getNameTranslated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRank()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getRank()I

    move-result v0

    return v0
.end method
