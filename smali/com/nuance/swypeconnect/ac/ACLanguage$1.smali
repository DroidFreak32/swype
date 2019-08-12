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
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguage;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onLocale(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    return-void
.end method
