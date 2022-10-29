.class Lcom/nuance/connect/sqlite/DlmEvent;
.super Ljava/lang/Object;


# instance fields
.field final appname:Ljava/lang/String;

.field final category:I

.field final event:Ljava/lang/String;

.field final highPriority:Z

.field final inputType:I

.field final locale:Ljava/lang/String;

.field final location:Ljava/lang/String;

.field final timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/sqlite/DlmEvent;->event:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/connect/sqlite/DlmEvent;->category:I

    iput-wide p3, p0, Lcom/nuance/connect/sqlite/DlmEvent;->timestamp:J

    iput-object p5, p0, Lcom/nuance/connect/sqlite/DlmEvent;->appname:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/connect/sqlite/DlmEvent;->location:Ljava/lang/String;

    iput-object p7, p0, Lcom/nuance/connect/sqlite/DlmEvent;->locale:Ljava/lang/String;

    iput p8, p0, Lcom/nuance/connect/sqlite/DlmEvent;->inputType:I

    iput-boolean p9, p0, Lcom/nuance/connect/sqlite/DlmEvent;->highPriority:Z

    return-void
.end method
