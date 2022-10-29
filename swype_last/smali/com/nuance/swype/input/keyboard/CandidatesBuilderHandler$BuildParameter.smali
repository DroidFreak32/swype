.class Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;
.super Ljava/lang/Object;
.source "CandidatesBuilderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuildParameter"
.end annotation


# instance fields
.field final parameter:Ljava/lang/Object;

.field final source:Lcom/nuance/input/swypecorelib/Candidates$Source;


# direct methods
.method public constructor <init>(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/Object;)V
    .registers 3
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;->source:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 65
    iput-object p2, p0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;->parameter:Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public getParameter()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;->parameter:Ljava/lang/Object;

    return-object v0
.end method
