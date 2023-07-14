.class Lcom/nuance/swype/connect/Connect$SessionState;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionState"
.end annotation


# instance fields
.field private final enterKeySelected:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "enterKeySelected"    # Z

    .prologue
    .line 1769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1770
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect$SessionState;->enterKeySelected:Z

    .line 1771
    return-void
.end method


# virtual methods
.method public getEnterKeySelected()Z
    .locals 1

    .prologue
    .line 1774
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect$SessionState;->enterKeySelected:Z

    return v0
.end method
