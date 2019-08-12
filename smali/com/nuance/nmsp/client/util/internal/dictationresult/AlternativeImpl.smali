.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/dictationresult/Alternative;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/util/Vector;

.field private c:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "AlternativeImpl()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "AlternativeImpl(Vector)"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    return-void
.end method

.method private a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    return-object v0
.end method


# virtual methods
.method public addToken(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)V
    .locals 3

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to alternatives"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getParentTokens()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public getTokens()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public setParentTokens(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->c:Ljava/util/Vector;

    return-void
.end method

.method public size()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public tokenAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v3, v0

    :goto_0
    if-eq v0, p1, :cond_1

    add-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setLeadingSpaces(I)V

    if-eqz v3, :cond_2

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setTrailingSpaces(I)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method public wordAt(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetching alternative at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
