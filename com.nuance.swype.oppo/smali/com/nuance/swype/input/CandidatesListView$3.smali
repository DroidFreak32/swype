.class Lcom/nuance/swype/input/CandidatesListView$3;
.super Ljava/lang/Object;
.source "CandidatesListView.java"

# interfaces
.implements Lcom/nuance/swype/input/CandidatesListView$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/CandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/CandidatesListView;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView$3;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(I)I
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 352
    return p1
.end method

.method public map(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "itemWidth"    # I

    .prologue
    .line 357
    return p1
.end method
