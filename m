Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CA01E86E
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 08:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IuchlHswViSUjm4OCA9moBiN4kfbfoTk0BIyRDzsAk=; b=PmE4+u1KLGp76A
	pZp3N40NilPIuj2L1mNhu2EismWZq/GdaKIJUshTRciBZRXRWHJq4xnyuHvfMRAg4nIREmQUlvITP
	J7z9hFOQOVjqBzIjoV3WSzFV36xxSgK1lM0IuiKN+rbCagtxfIjTFmF7yySrlLRavTXf2NvC3RYC7
	OJFSaXiPXUFxnKyTdLJn7xc4JwSFFEmvlTe+zkLD5mjbJjVf/9fj8g2fblAJGgbxDr4jOQZVYnCqS
	NO14dsYb/GMJft0z6bYPfMZk0M0NPYZseoktbNnM/jG1VcoSvJ7TeyScLHTqHTwzl73EgK4FkS3hT
	bkiiXO0SZmepSnKLaFcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQnf6-0006iU-NF; Wed, 15 May 2019 06:45:12 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQnf3-0006DE-Hg
 for kexec@lists.infradead.org; Wed, 15 May 2019 06:45:11 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x4F6iUPw006696
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 15:44:30 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x4F6iUqq006150;
 Wed, 15 May 2019 15:44:30 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x4F6iUtQ027363;
 Wed, 15 May 2019 15:44:30 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.138] [10.38.151.138]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-5068272;
 Wed, 15 May 2019 15:43:51 +0900
Received: from BPXM12GP.gisp.nec.co.jp ([10.38.151.204]) by
 BPXC10GP.gisp.nec.co.jp ([10.38.151.138]) with mapi id 14.03.0319.002; Wed,
 15 May 2019 15:43:50 +0900
From: Junichi Nomura <j-nomura@ce.jp.nec.com>
To: Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Thread-Topic: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI
 systab and ACPI tables
Thread-Index: AQHVCS06YD4lckvUHUCIqj5Wl9aEBaZoC86AgAAHHwCAAATOAIAABLCAgAFCxgCAAFs9gIAAL20AgAAWZYCAABPAAIAAuEgAgABdmIA=
Date: Wed, 15 May 2019 06:43:49 +0000
Message-ID: <19532243-e02a-838a-732a-a47c15339dde@ce.jp.nec.com>
References: <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic> <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic> <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190514084841.GA27876@dhcp-128-65.nay.redhat.com>
 <20190514113826.GM2589@hirez.programming.kicks-ass.net>
 <20190514125835.GA29045@dhcp-128-65.nay.redhat.com>
 <20190514140916.GA90245@gmail.com>
 <20190515010850.GA9159@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190515010850.GA9159@dhcp-128-65.nay.redhat.com>
Accept-Language: en-US, ja-JP
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.125.85]
Content-ID: <6C5001855D1CA0499D67A26346A777CB@gisp.nec.co.jp>
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_234509_806780_3F213A8B 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
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
Cc: "fanc.fnst@cn.fujitsu.com" <fanc.fnst@cn.fujitsu.com>,
 "kasong@redhat.com" <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Borislav Petkov <bp@alien8.de>, "hpa@zytor.com" <hpa@zytor.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 5/15/19 10:08 AM, Dave Young wrote:
> On 05/14/19 at 04:09pm, Ingo Molnar wrote:
>>> Hmm, it seems caused by some WIP branch patches, I suspect below:
>>> commit 124d6af5a5f559e516ed2c6ea857e889ed293b43
>>> x86/paravirt: Standardize 'insn_buff' variable names
>>
>> This commit had a bug which I fixed - could you try the latest -tip?
> 
> Will do, but I do not use tip tree often, not sure which branch includes
> the fix.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/
> Is it tip/master or tip/tip?

Just in case, when I tried tip/master, one of test machines crashed
in the same way as:
  https://lkml.org/lkml/2019/5/9/182

and I found this patch was needed:
  [PATCH] x86: intel_epb: Take CONFIG_PM into account
  https://lore.kernel.org/lkml/3431308.1mSSVdqTRr@kreacher/

-- 
Jun'ichi Nomura, NEC Corporation / NEC Solution Innovators, Ltd.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
