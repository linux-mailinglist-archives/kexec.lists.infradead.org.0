Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1285E37D25
	for <lists+kexec@lfdr.de>; Thu,  6 Jun 2019 21:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4hjCEveL+V6Z2ADbJ8pnNA2EEYStXKrN5LDThfOgjg=; b=uIKzvaMD6qPumd
	FmlxyZuWvD/NvZaf+Cn6HerMJB5f4E2HRyzgeYIgGRcxx72YLleIiqcvvBKIVeUFM83ihFpNo/2ON
	sY4SvJOcUJb/xzXiNrCnedG6688sRVPTmrpMg2aFVTY2DQZ9QMTxgCknL/RJQOW/gHhU25fw0Rxat
	xxMQgP7kzMIM4qyAjW6cMYWOEoQ9INfLTQ9PoL5zUdc37A5LChfZcZP0aF5hSvcx8yClQ79qgNce2
	SmlxSvKXaO643yu1dOqTD/ssSNsWuYD6BApYP1i+qNfmXRj0SsaM5wu5eVHRLV1mXwPz69pd7Yw7b
	Md+OI4cyYPwdbGBSsTBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxw6-00013S-Ay; Thu, 06 Jun 2019 19:20:30 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxvz-00011V-8h
 for kexec@lists.infradead.org; Thu, 06 Jun 2019 19:20:24 +0000
Received: from zn.tnic (p200300EC2F1EFA00985DCAE74D76316F.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f1e:fa00:985d:cae7:4d76:316f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id BAC1C1EC01AD;
 Thu,  6 Jun 2019 21:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1559848810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=yCNTMXZUE49/fLG5ZTMFnNHLY3mz38m+7qEFZfj0H2E=;
 b=TO/Bj+VSjGd7aN55WYzQsAVoI0w1RWmtV/Y3Oca5Ee5Bo5CYMyuw1/RTjCbvmPTiS5C/+m
 50n9PcQVLNmtYaN0vA+TogvG2TGeUoSl74biq77mKb+44bm2BU5PaQ0KLQNrtY3MKL9e3h
 KR/O+rKKNvNaZp3BemDaMJmU3y+WjIQ=
Date: Thu, 6 Jun 2019 21:20:10 +0200
From: Borislav Petkov <bp@alien8.de>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190606192010.GJ26146@zn.tnic>
References: <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080210.GC16774@MiWiFi-R3L-srv>
 <20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp>
 <20190515065843.GA24212@zn.tnic>
 <20190515070942.GA17154@jeru.linux.bs1.fc.nec.co.jp>
 <CACPcB9cyiPc8JYmt1QhYNipSsJ5z3wTOJ90LS5LTx4YqwaG8rA@mail.gmail.com>
 <20190521180855.GA7793@cz.tnic>
 <CACPcB9fg5RGXcBbESNnn9rV0DSoh4jYkVWZrdcRWay5KKAjLww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9fg5RGXcBbESNnn9rV0DSoh4jYkVWZrdcRWay5KKAjLww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_122023_461176_BB826215 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "hpa@zytor.com" <hpa@zytor.com>, Junichi Nomura <j-nomura@ce.jp.nec.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 10:49:54AM +0800, Kairui Song wrote:
> Hi, by now, I still didn't see any tip branch pick up this patch yet,
> any update?

Ok, stuff is queued in tip:x86/boot now. Please test it as much as you
can and send all fixes ontop.

Thx.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
