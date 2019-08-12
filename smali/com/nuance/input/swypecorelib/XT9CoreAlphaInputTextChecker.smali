.class public Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;
.super Ljava/lang/Object;
.source "XT9CoreAlphaInputTextChecker.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/TextChecker;


# static fields
.field private static final TAG:Ljava/lang/String; = "dkTextChecker"


# instance fields
.field private final alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;


# direct methods
.method constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V
    .locals 0
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 28
    return-void
.end method


# virtual methods
.method public checkRegion(Ljava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    .line 34
    return-void
.end method
