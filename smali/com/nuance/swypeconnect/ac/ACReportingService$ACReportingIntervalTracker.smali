.class public final Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ACReportingIntervalTracker"
.end annotation


# instance fields
.field private final helper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;->helper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    return-void
.end method


# virtual methods
.method public final mark()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;->helper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->mark()V

    return-void
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;->helper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->mark(I)V

    return-void
.end method

.method public final mark(II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;->helper:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->mark(II)V

    return-void
.end method
