Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7643B3C4
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 13:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmdIKSSkEUk4ES9SfjIu0yNpO2YWBiBWe4WHf4gR/Kc=; b=LRVsxvGhufqefB
	XX1V/gj2IIhIz03+WONVPOZdjf7Xxup1eGbJO/ZKDCZ9Tgx7pw3BC2/hBst9Lqfsc2FRiTRZW5b9C
	NHv1NRnqj4sN/bvNYlx7CkwTmoamYaniDA/xXE9tH2a0gHrfpPg89Rl5kXw0wzlt0UMB8SBkNWnnT
	fN9oy6gr8byHTEFecrhjHzPm9bXFWaKHqWarZOMMtcHCa6Ta3PMC9NRISDv0sQ8DsWdH+nJuf1+2d
	8nRjS2aPrsSYeLROj0QVNTjYZ/XWTT+p6I00EZim3yOUjgUWGHN72OYiXdbyeHYaizk+zkKZhbA+u
	5VtwMgM5BRbH7OwbIMRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIAM-0000rW-2a; Mon, 10 Jun 2019 11:08:42 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haIAG-0000qQ-5g
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 11:08:38 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x5AB7oe5003271
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 10 Jun 2019 20:07:51 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x5AB7o41027936;
 Mon, 10 Jun 2019 20:07:50 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x5AB7od7014667;
 Mon, 10 Jun 2019 20:07:50 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.138] [10.38.151.138]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-5831018;
 Mon, 10 Jun 2019 20:07:06 +0900
Received: from BPXM12GP.gisp.nec.co.jp ([10.38.151.204]) by
 BPXC10GP.gisp.nec.co.jp ([10.38.151.138]) with mapi id 14.03.0319.002; Mon,
 10 Jun 2019 20:07:05 +0900
From: Junichi Nomura <j-nomura@ce.jp.nec.com>
To: Borislav Petkov <bp@alien8.de>, Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
Thread-Topic: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
Thread-Index: AQHVH19SHHg08a6VFkmqhGhz4rJYp6aUDqEAgAAHiwCAAAt/gIAAAfyA
Date: Mon, 10 Jun 2019 11:07:05 +0000
Message-ID: <1555938c-e00f-d40f-5f24-146aec7a67eb@ce.jp.nec.com>
References: <20190610073617.19767-1-kasong@redhat.com>
 <20190610095150.GA5488@zn.tnic>
 <CACPcB9f-sussXaOuOau6=CD85pS2KhcsknpJDQH_aEkwvLfvVA@mail.gmail.com>
 <20190610105959.GB5488@zn.tnic>
In-Reply-To: <20190610105959.GB5488@zn.tnic>
Accept-Language: en-US, ja-JP
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.125.85]
Content-ID: <A92E1697A0430C4EB905863A22704E42@gisp.nec.co.jp>
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_040836_529171_3E53A6BC 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: the arch/x86 maintainers <x86@kernel.org>, Baoquan He <bhe@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dirk van der Merwe <dirk.vandermerwe@netronome.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kairui, Boris,

On 6/10/19 7:59 PM, Borislav Petkov wrote:
> On Mon, Jun 10, 2019 at 06:18:50PM +0800, Kairui Song wrote:
>> Hi Boris, unfortunately I don't have a real machine which only have
>> the NVS region. I did fake the memmap to emulate such problem but
>> can't really promise this will fix the real case. So just declare it
>> won't break anything that is already working. And I'm asking Junichi
>> to have a try as he reported this issue on the machines he has.
> 
> Yes, this is how you should do it. First you test on a real hardware -
> if the issue is such that needs a real hardware to verify - and if it
> passes, *then* you send the patch.
> 
> If you don't have access to the box, then ask someone who has.
> 
> But for the future, please do not send untested patches in a hurry,
> hoping that they would work. This could cause more trouble than the
> little time you might save speculating it'll all go fine.

I tested the patch on such a machine on top of the current tip/master
f9818950848 ("Marge branch 'linus'") and it works fine.
Without the patch, kexec -l fails.

I had tested the version I posted here on bunch of physical machines
I had access and confirmed it didn't broke working setups:
https://lore.kernel.org/lkml/20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp/

Since the logic in the patch seems unchanged, I'm very sure it's ok.

-- 
Jun'ichi Nomura, NEC Corporation / NEC Solution Innovators, Ltd.
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
