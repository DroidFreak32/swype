.class final Lcom/nuance/nmdp/speechkit/GenericResultImpl;
.super Ljava/lang/Object;
.source "GenericResultImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/GenericResult;


# instance fields
.field private _status:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/GenericResultImpl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/GenericResultImpl;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericResultImpl;->_status:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/GenericResultImpl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/GenericResultImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/GenericResultImpl;->_status:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method final getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;-><init>(Lcom/nuance/nmdp/speechkit/GenericResultImpl;)V

    return-object v0
.end method

.method public final getQueryResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericResultImpl;->_status:Ljava/lang/String;

    return-object v0
.end method
