.class public Lcom/nuance/sns/ScraperStatus$StatusValue;
.super Ljava/lang/Object;
.source "ScraperStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/ScraperStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusValue"
.end annotation


# instance fields
.field public final status:Lcom/nuance/sns/ScraperStatus$STATUS;

.field public final time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/sns/ScraperStatus$STATUS;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Lcom/nuance/sns/ScraperStatus$STATUS;
    .param p2, "t"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/nuance/sns/ScraperStatus$StatusValue;->status:Lcom/nuance/sns/ScraperStatus$STATUS;

    .line 114
    iput-object p2, p0, Lcom/nuance/sns/ScraperStatus$StatusValue;->time:Ljava/lang/String;

    .line 115
    return-void
.end method
