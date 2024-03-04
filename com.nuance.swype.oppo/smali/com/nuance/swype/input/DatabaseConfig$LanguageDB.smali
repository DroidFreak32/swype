.class public Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageDB"
.end annotation


# instance fields
.field private final dbFileName:Ljava/lang/String;

.field private final dbId:I

.field private final displayName:Ljava/lang/String;

.field private final displaySummary:Ljava/lang/String;

.field private final info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dbid"    # I
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "displaySummary"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    .line 795
    iput-object p2, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbFileName:Ljava/lang/String;

    .line 796
    iput p3, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbId:I

    .line 797
    iput-object p4, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->displayName:Ljava/lang/String;

    .line 798
    iput-object p5, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->displaySummary:Ljava/lang/String;

    .line 799
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->displaySummary:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAssetFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    iget-boolean v0, v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->compressed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplaySummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->displaySummary:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbId:I

    return v0
.end method

.method getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    iget-object v0, v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->type:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    return-object v0
.end method

.method public isALMLDB()Z
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->ALM_LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCatDB()Z
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    iget-object v0, v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->type:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbType;->CDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCompressed()Z
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    iget-boolean v0, v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->compressed:Z

    return v0
.end method

.method public isHDB()Z
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->HDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLDB()Z
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    iget-object v0, v0, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->type:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegularLDB()Z
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTraceLDB()Z
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB1:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->TRACE_LDB2:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 855
    const-string v0, "[%s %s %#x]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->info:Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->dbId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
