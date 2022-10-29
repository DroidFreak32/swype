.class final Lcom/nuance/nmdp/speechkit/LanguageTableImpl;
.super Ljava/lang/Object;
.source "LanguageTableImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/LanguageTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;
    }
.end annotation


# instance fields
.field private _checksum:I

.field private _language:Ljava/lang/String;

.field private _languages:[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

.field private _status:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_status:Z

    .line 72
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_languages:[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    .line 73
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_language:Ljava/lang/String;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_status:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_status:Z

    return p1
.end method

.method static synthetic access$102(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_language:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableImpl;
    .param p1, "x1"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_checksum:I

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;)[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_languages:[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;)[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableImpl;
    .param p1, "x1"    # [Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_languages:[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    return-object p1
.end method


# virtual methods
.method public final getAvailableLanguage(I)Lcom/nuance/nmdp/speechkit/LanguageTable$Language;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 145
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_languages:[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_languages:[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    aget-object v0, v0, p1

    .line 147
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getAvailableLanguageCount()I
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_languages:[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    array-length v0, v0

    return v0
.end method

.method public final getChecksum()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_checksum:I

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_language:Ljava/lang/String;

    return-object v0
.end method

.method final getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<",
            "Lcom/nuance/nmdp/speechkit/LanguageTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;-><init>(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;)V

    return-object v0
.end method

.method public final isStatusSuccess()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->_status:Z

    return v0
.end method
