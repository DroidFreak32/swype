.class public Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceEnd;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;
.source "PdxValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeqenceEnd"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceEnd;-><init>(Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;-><init>(Ljava/util/Map;I)V

    .line 109
    return-void
.end method
