.class Lcom/nuance/swypeconnect/ac/ACLanguage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/LocaleCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguage;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguage;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocaleChange(Ljava/util/Locale;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguage;)[Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onLocale(Ljava/util/Locale;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
