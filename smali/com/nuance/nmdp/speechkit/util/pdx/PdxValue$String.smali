.class public final Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.source "PdxValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "String"
.end annotation


# instance fields
.field private final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    .line 399
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->_value:Ljava/lang/String;

    .line 400
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->_value:Ljava/lang/String;

    const-string v1, "\n"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
