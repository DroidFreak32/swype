.class final Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;
.super Ljava/lang/Object;
.source "LanguageTableImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/LanguageTable$Language;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/LanguageTableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LanguageImpl"
.end annotation


# instance fields
.field private _addresses:[Ljava/lang/String;

.field private _description:Ljava/lang/String;

.field private _lang:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAddress(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 58
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_addresses:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 59
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_addresses:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 60
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getAddressCount()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_addresses:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_lang:Ljava/lang/String;

    return-object v0
.end method

.method final parse(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Z
    .registers 8
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    const/4 v3, 0x0

    .line 19
    const-string/jumbo v4, "lang"

    invoke-interface {p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_lang:Ljava/lang/String;

    .line 20
    const-string/jumbo v4, "description"

    invoke-interface {p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_description:Ljava/lang/String;

    .line 22
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_lang:Ljava/lang/String;

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_description:Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 24
    const-string/jumbo v4, "addresses"

    invoke-interface {p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v0

    .line 25
    .local v0, "addresses":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v2

    .line 26
    .local v2, "size":I
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_addresses:[Ljava/lang/String;

    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v2, :cond_3d

    .line 29
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_addresses:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getUTF8String(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 30
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->_addresses:[Ljava/lang/String;

    if-nez v4, :cond_3a

    .line 38
    .end local v0    # "addresses":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_39
    :goto_39
    return v3

    .line 27
    .restart local v0    # "addresses":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 35
    :cond_3d
    const/4 v3, 0x1

    goto :goto_39
.end method
