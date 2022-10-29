.class public Lcom/nuance/connect/internal/AssetsLegalDocuments;
.super Ljava/lang/Object;


# static fields
.field private static final documentTypeMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private final documentFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/AssetsLegalDocuments;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentTypeMapping:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string/jumbo v2, "TOS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentTypeMapping:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "EULA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentTypeMapping:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "PRIVACY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentTypeMapping:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "USAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentFiles:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->context:Landroid/content/Context;

    return-void
.end method

.method private loadDocumentFiles(I)V
    .registers 12

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentTypeMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/internal/AssetsLegalDocuments;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "loadDocumentFiles("

    const-string/jumbo v4, ")"

    invoke-interface {v1, v3, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_14
    iget-object v1, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_20
    if-ge v1, v4, :cond_76

    aget-object v5, v3, v1

    const-string/jumbo v0, ".html"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string/jumbo v0, "\\."

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "loadDocumentFiles("

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string/jumbo v9, " : "

    invoke-interface {v0, v7, v8, v9, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_68} :catch_6c

    :cond_68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    :catch_6c
    move-exception v0

    sget-object v1, Lcom/nuance/connect/internal/AssetsLegalDocuments;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_76
    sget-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "loadDocumentFiles("

    const-string/jumbo v3, "): found "

    iget-object v4, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentFiles:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " docs"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getText(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentFiles:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/AssetsLegalDocuments;->loadDocumentFiles(I)V

    :cond_16
    iget-object v0, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->documentFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_9b

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2a
    if-nez v1, :cond_41

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_41

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2a

    :cond_41
    if-eqz v1, :cond_9b

    :try_start_43
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_65} :catch_66

    goto :goto_5c

    :catch_66
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_69
    sget-object v2, Lcom/nuance/connect/internal/AssetsLegalDocuments;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-object v7, v0

    :goto_73
    sget-object v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "getText("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", "

    const-string/jumbo v5, ") "

    if-nez v7, :cond_95

    const-string/jumbo v6, " not found"

    :goto_87
    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    :cond_8c
    :try_start_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_66

    move-result-object v0

    :try_start_90
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_99

    move-object v7, v0

    goto :goto_73

    :cond_95
    const-string/jumbo v6, " found"

    goto :goto_87

    :catch_99
    move-exception v1

    goto :goto_69

    :cond_9b
    move-object v7, v2

    goto :goto_73
.end method
