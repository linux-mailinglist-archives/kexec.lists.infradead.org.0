Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15382BD65
	for <lists+kexec@lfdr.de>; Tue, 28 May 2019 04:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zl8wtGGC0LsdWGPte09h/v7hBeSVZ4cRHK6LGnWWbzI=; b=quKI9yOcjkbK4t
	QOQB/wfXRtrFCPGo5lIj6cGbOKh+mABQciIvKUNWK01yW3BmeGQKJP5unlgDQ7f1p77dQLpuGWCfX
	7LE7Qe1iHe6IBKexl1Qbzw7k1PQRFzQAK0PqqYLn+b5Gd6JYTe1zHldbWFkt9jMST/34snnDLoFq4
	wPKRBd/tw9R9z+J7TMNUwJI17kyfK7C0i0YY8XM02LlXvDqYpjdcOSLqlaCoYRo7xZIObSrUwcAFh
	B3FJuPErZ0TPaDsFBDrmrAbWoFhzAT5gi1vHXdzRCAriyeIi4aPj4l75JpMJRN5Cb5A1RyfAIuqvK
	9tne87ZyeVA9DDBDsNlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVSBm-0004Ck-KX; Tue, 28 May 2019 02:50:10 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVSBi-0003fW-G6
 for kexec@lists.infradead.org; Tue, 28 May 2019 02:50:08 +0000
Received: by mail-it1-f193.google.com with SMTP id 9so1667559itf.4
 for <kexec@lists.infradead.org>; Mon, 27 May 2019 19:50:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h8xDYjwWtMzw7kKK4/8CQKmcJnsMDJUuPxql44H0bgI=;
 b=KwOV5E6X5aho8mVy5ok593lqRf8hZrd3kI3EYdys17WdgRwHTAyIv45/T9hCaLG3OH
 DAantonv+G9eD6y2o/r7jbKeFCmQzMfbHXIFtaBhKLDTZwGQLMeh154hXJfU/q0mnxOg
 Cpsx7SpY/fHrs3UAYo7HjKkpxa/pT0b3uDl1R1HI1XNmgmtPMluMkj7RLXxJRCcPHuHn
 U5FQMyTxjWcAEBHH3M5yNzuU1+vpAbGWlNYMHL2Ladi85Z2tzGUi6flOeqDyoBB4zjaZ
 A+zvMm5aHP8tlQlIxflESSRC84gLtp2wNPcImT339lxLn9cnWQ1Aah+AIUjc3OPfRYoq
 /QhQ==
X-Gm-Message-State: APjAAAWXiseA5y+PixBKS1lh5CjcKxCWNmdLJSIPxV4AzvizIu/o9Z1j
 9LC7pFSg01gv+iyh52mRZ7mKPmABuSbmnO0ZpNvHXeYs0Vz2gA==
X-Google-Smtp-Source: APXvYqzcrvMD1G/2IfSPGE8fRNddmu61fH78L5xrp4cLcuFruI7q7nk+hb/HK8TTn9wN2yqynY6wWowySagIjUB7tvM=
X-Received: by 2002:a24:6cd5:: with SMTP id w204mr1486520itb.12.1559011805500; 
 Mon, 27 May 2019 19:50:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic> <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic> <20190513080210.GC16774@MiWiFi-R3L-srv>
 <20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp>
 <20190515065843.GA24212@zn.tnic>
 <20190515070942.GA17154@jeru.linux.bs1.fc.nec.co.jp>
 <CACPcB9cyiPc8JYmt1QhYNipSsJ5z3wTOJ90LS5LTx4YqwaG8rA@mail.gmail.com>
 <20190521180855.GA7793@cz.tnic>
In-Reply-To: <20190521180855.GA7793@cz.tnic>
From: Kairui Song <kasong@redhat.com>
Date: Tue, 28 May 2019 10:49:54 +0800
Message-ID: <CACPcB9fg5RGXcBbESNnn9rV0DSoh4jYkVWZrdcRWay5KKAjLww@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
To: Ingo Molnar <mingo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_195006_537440_4FFA6E28 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: "x86@kernel.org" <x86@kernel.org>, Baoquan He <bhe@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "fanc.fnst@cn.fujitsu.com" <fanc.fnst@cn.fujitsu.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Borislav Petkov <bp@alien8.de>, "hpa@zytor.com" <hpa@zytor.com>,
 Junichi Nomura <j-nomura@ce.jp.nec.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 2:09 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, May 21, 2019 at 05:02:59PM +0800, Kairui Song wrote:
> > Hi Boris, would you prefer to just fold Junichi update patch into the
> > previous one or I should send an updated patch?
>
> Please send a patch ontop after Ingo queues your old one, which should
> happen soon. This way it would also document the fact that there are
> machines with NVS regions only.
>
> Thx.
>

Hi, by now, I still didn't see any tip branch pick up this patch yet,
any update?

--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
