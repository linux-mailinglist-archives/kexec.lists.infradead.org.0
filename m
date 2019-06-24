Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B90251CC2
	for <lists+kexec@lfdr.de>; Mon, 24 Jun 2019 23:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTpWmGJkWTPnVf3lzk8bR/WXjvzNl6i81N7QzNMPD8k=; b=NtDc5YhJ9a0bPy
	/pJ0hKueYYk0BO2XLDNc5zt5LrQr2qLYJBgTGFN0FfgarrEMjRYbEEk1ubKK6inRfxwAxxBJau8ln
	P2P1V2iKTCXEvujSexsro6Fkm3dwz1kJ2YWBH9jl1WO3BOPQhRk+BeuZel862drnBJ/zb58AlKWh7
	QImCRTBnmwpyIxOxckc4Qomy5s0/4Q0z53N8Yds+nSOCdj+xaAIxiIq1eGhy4r50x/ztd+iIBUaiN
	qOKBaE7t1vE72bJKvSbS8XqYrWlXAYBw+RfXziKST2mJ/jtBMDbuFZOaJlDCKziJb56qlRUJSkFha
	6n1/WAr8x2tj+rOWSWZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWAQ-0000rV-Vr; Mon, 24 Jun 2019 21:06:22 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWAN-0000pn-VA
 for kexec@lists.infradead.org; Mon, 24 Jun 2019 21:06:21 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so535056iol.13
 for <kexec@lists.infradead.org>; Mon, 24 Jun 2019 14:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qsiy4GMqJp8OpN08sGtvyRN/iizHHt1yJkFR39fo0EA=;
 b=AfDiePpE+a5nc6qa49QzPgmPwYggmKliwXdfvpiy7UQT/bVYNMVaOHV5Ktwh3u+YUZ
 +TdIpcDQJUBkv2lxbRtRSmOVLI61Bn2aAW6Ge+Zai32LvXsxsfx/7ELuMHRfwC99S6Go
 dHCihXe0aU2qgLK9jYy1cMsDvX4VYUuST3O5ovrC4/4nIJvAnWOfLCgzSHAUGZJD6qw8
 /y/t/UNGfybachMS13UMBQ6y4dgTFO/ohApf7LqGxuz2ujPoOg2QR4xhW+QEvV96SQWk
 khL/qDDPTdLoAmVKwNzNqFqoYISbEZ2ipCgj/ZomTocT/BQlHHuLS3qx6qdl2R/NSCUt
 89Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qsiy4GMqJp8OpN08sGtvyRN/iizHHt1yJkFR39fo0EA=;
 b=NBwgUB0/ZM3BBwq2fkr/1d1GUJINQA/2pr5cBACtW05qb/BbC4seZL5n6EYfjlCIOn
 dscd1+x3ByUMWhVLlG2Jm6HohQ3TqEFMpqrjtfLggzfwKUFvybrJAAWczwuuFcJAjXIu
 UusBgvig0ymzSCVFNZzqW1hRZb5yOKAosrAlnSFOOErGfMk6V8oCA2708mkXoDmOftWH
 ouxbkay1nLDtF1job/2HWPQrSJkAWYBUuvY0eg9ldikMofk6o9I/yPNtmEd9k5/+auq+
 5ABxHllMY+cVJT4nhR4wFFf/b8SwHi4Phav672TlLk9/Y1lQUmSR8kHYEcP7VyBsZFur
 DO9g==
X-Gm-Message-State: APjAAAUGCyow4IsoNK2eT0awQiIHrfF/uV3TcRwuAJjIifh3JPUkkhkW
 F8ZUOLFNEMieOgFQvmryHXTgjonA/GcgywROymUAbYnigNQ=
X-Google-Smtp-Source: APXvYqwv4riJcpp85SGhSbO9g75WovIl5ds69I6e8yCEhOaWFyb3mGnt+TYj+cuUzPOyZ5lIXy/KTsrYc1TP3QArKeA=
X-Received: by 2002:a6b:f114:: with SMTP id e20mr39290067iog.169.1561410371602; 
 Mon, 24 Jun 2019 14:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-8-matthewgarrett@google.com>
 <20190621064340.GB4528@localhost.localdomain>
 <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
 <20190624015206.GB2976@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190624015206.GB2976@dhcp-128-65.nay.redhat.com>
From: Matthew Garrett <mjg59@google.com>
Date: Mon, 24 Jun 2019 14:06:00 -0700
Message-ID: <CACdnJusPtYLdg7ZPhBo=Y5EsBz6B+5M2zYscBrLcc89oNnPkdQ@mail.gmail.com>
Subject: Re: [PATCH V31 07/25] kexec_file: Restrict at runtime if the kernel
 is locked down
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_140620_006720_AF1F2B3D 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 6:52 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 06/21/19 at 01:18pm, Matthew Garrett wrote:
> > I don't think so - we want it to be possible to load images if they
> > have a valid signature.
>
> I know it works like this way because of the previous patch.  But from
> the patch log "When KEXEC_SIG is not enabled, kernel should not load
> images", it is simple to check it early for !IS_ENABLED(CONFIG_KEXEC_SIG) &&
> kernel_is_locked_down(reason, LOCKDOWN_INTEGRITY)  instead of depending
> on the late code to verify signature.  In that way, easier to
> understand the logic, no?

But that combination doesn't enforce signature validation? We can't
depend on !IS_ENABLED(CONFIG_KEXEC_SIG_FORCE) because then it'll
enforce signature validation even if lockdown is disabled.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
