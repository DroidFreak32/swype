.class public final Lcom/flurry/android/FlurryAgent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static a:Lcom/flurry/android/FlurryAgentListener;


# instance fields
.field public b:Z

.field public c:I

.field public d:J

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    .line 1386
    const/4 v0, 0x5

    iput v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    .line 1389
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    .line 1395
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    return-void
.end method
