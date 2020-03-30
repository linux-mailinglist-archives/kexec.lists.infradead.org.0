Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33799197995
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 12:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qfXbHUn+t5tTfGWYbIAUQxqa115yhKPxAuxUsJEIpRs=; b=UXBBDIn8sECI6K
	edEraGWKfjzBTY+rX51U1nhAyGtDQjUjrFwylGZwIU0RQcaJNHHNA2aFgQ45bONVuQHoyqfSODy3P
	uS/U+BswBJTOwVitKtzFWBcswEovU9br7/1gKLjwFKeraYGBcZ3DaBygFYoOSNgeAzBw+mQwBSZZm
	9lIFwIoeVl47KJltIpns9l3NNSS+ejm+kQFhBYG3hLIS7d8PrcbSxDJK+G+D2svH6B5uzip3JhqLB
	3C1HgFt1LcPMezCH6rZb1dyzsrJfR/EXQw7UNvfpTZjnfjAhDCyUzYCOV25xzeiTO+bAM+SPaTwvc
	cl1DTu+hnpC65Q2jh3AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIrvZ-00021k-7S; Mon, 30 Mar 2020 10:45:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIrvS-00021N-KQ
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 10:45:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id b12so19423945wmj.3
 for <kexec@lists.infradead.org>; Mon, 30 Mar 2020 03:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=EmnByVjRRIj/dcGI2wocpvR+OQ9kOqGokD1SxfsI6FI=;
 b=nhgPvd7eC/wAveBQM502VKFJPhRdOYTBBuTDOjJDwUKzduguDr9AM5BehrrADFWHeV
 V5y0mhFyXzJE4UeYwKeMW9pglAyZSOzC31/cJ8/Sd+NIhMYWovjf2y3d+FkMZC3Mr8qj
 GI+qQhaw4VcuJ51TmEa3gFMFYsLmN1QsLQ8TLjKIE2akJ69AcSQrctuAH/X+W9XzFHAN
 OPZPlUWMBk3IS8pVX8SS++YS/+YZT2uQg544Ezd5o3F6fIKejXMXMoaJ+7W7qs1tvIM0
 jn4E4i3HHgJ/UnD6N16aZIA8LMuz3krq8PgQYmGvSw9vs/c/ZvUa/SFhUXVw5sXY4kqL
 zPNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=EmnByVjRRIj/dcGI2wocpvR+OQ9kOqGokD1SxfsI6FI=;
 b=PigvAKjpgOIPvoqWNtU73HTayHpwlpZdYVcy3s2EFII9oQz3fkZM8kf9HgKkRVT5sK
 5v6WiimOt3Uxt8pmOpWtTQqEXoYhqK9T3nrQ+c+QT2tHk0emS0EJJ6HtKlWfDWCoPfcv
 ohvYv+GbTc1TPhzzAg7OmAYdzbBP8/MXs6f2GB7R7mwpPuuDM2wF71bbks7v+GpE8xzZ
 Hmtwhg3MRobk6Fiemwb2vSzmiqlPduFv2MPJXEc23bIV+KWufqraFZP7BQpPI3Z2gASP
 3sTynHaTaEUuyN71hXbyhSHdZwm9ZKcoHDKHlSjTFgJRvm7fpp0/Pj7hOBn8o1mh1RBu
 cEzg==
X-Gm-Message-State: ANhLgQ0947ZmZiJ3Wwm/UPmr7gf5OAHIdIE9UJqmyJHU1NjMwSzgm5nZ
 W7XFLc4S67DZHg6c2G+IMgW4uhKU4MeqMeKd4UP4NpkU
X-Google-Smtp-Source: ADFU+vtskH22j1UBQ6mMVfQzocIUKZ0y2QcSGp8en5pjvvjAKblbI/7x6uHF/zZAYJen1kb0aGvG5Az6dliZIRB4mkE=
X-Received: by 2002:a1c:bcc6:: with SMTP id m189mr12824489wmf.48.1585565148406; 
 Mon, 30 Mar 2020 03:45:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:fcc7:0:0:0:0:0 with HTTP; Mon, 30 Mar 2020 03:45:48
 -0700 (PDT)
From: Harvey Terence <ochefut11@gmail.com>
Date: Mon, 30 Mar 2020 12:45:48 +0200
Message-ID: <CAPCmsMM_Ry4xJXweWiy7mwO40TsTse9MUWvMZnGndT2u-rzdWA@mail.gmail.com>
Subject: THANK YOU
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_034550_675224_EB8CACCE 
X-CRM114-Status: SPAM  ( -14.40  )
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [maab1[at]yahoo.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ochefut11[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ochefut11[at]gmail.com]
 0.9 URG_BIZ                BODY: Contains urgent matter
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 HK_SCAM                No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Reply-To: maab1@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From Harvey Terence (Mr.)

25 Canada Square, Canary Wharf, London E14 5LB,

Good day

I am Mr. Harvey Terence, Operating Officer of this bank. With your
honest assistant and cooperation, we can finalize this transaction
within 7/14 working days.

 I need a reliable and honest person who will be able to handle this
business opportunity with me because of the need to involve a
foreigner. I am contacting you because of such demand, and I believe
you will work with me to achieve this purpose and will never turn down
my request.

Before the United States of America and Iraqi war, our bank customer
Mr.Hatem Kamil Abdul Fatah, who was the deputy governor of Baghdad in
Iraq and also a business man made a deposit of (GBP10,750,000.00) Ten
Million, Seven Hundred And Fifty Thousand
Pounds Sterling Only in a Bank account number: ABP-LN-685
00/52207712321 over here in our bank.

But I later discovered that the Deputy Governor has been assassinated
in Baghdad by unknown gun men.

Below is the information about his death as a proof and verification
of his assassination In Baghdad:
http://news.bbc.co.uk/go/pr/fr/-/1/hi/world/middle_east/3970619.stm

During my further investigation after hearing of his assassination in
Baghdad, I also discovered that Mr.Hatem Kamil Abdul Fatah did not
declare any next of kin in his official papers including the paper
work of his funds with our bank which might be because he embezzled
this funds while in office and was afraid of revealing his political
dignity when opening the above account number in our bank until his
dead.

My aim of contacting you is to assist me to receive this money in your
bank account over there in your country and let me know how much
commission you will receive out of the total fund when transferred
into your oversea bank account?.

You will diligently transfer the balance to me through another bank
account number from another bank I will forward to you as soon as the
fund is transferred into your over sea account after deducting your
commission from the whole sum or I will come over to your country to
meet with you one on one for sharing of the fund or shall invested the
fund into any lucrative business out there in your country together..

We are going to process and perfect the transaction legally as bank to
bank procedure has been put in place.

I need your urgent reply through my private E-mail address at:
maab1@yahoo.com if you are interested to work with me.

I provide more details on how to process the approval of the fund in
your name to be release for instant bank to bank wire transfer into
any designated bank account of your choice without delay.

Please keep this transaction safe and confidential as exposing this
transaction will jeopardize my reputation in this Bank.

I would like to hear from you in no distant time as soon as you read
this mail through the above stated E-mail address so that we can
proceed accordingly.

Best Regards,

Mr. Harvey Terence

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
