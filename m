Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDC124D20
	for <lists+kexec@lfdr.de>; Tue, 21 May 2019 12:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEkBi39qYCf48aA7HHoJsPksJJX7AvOM6hL2Cowv53g=; b=aXO0my5t/OXUkp
	ba1T9tDHNVv4E2iDLjvOS+BJmHUZW+XG6v0QqQtVHqT1ZbJVVrFDP1s2kGkK+vsH9kGFXJBpT3C6z
	dwLlKSqALJyIasoKtthbsKN8jvun/5pLN0eweTfLlLQL5dbLHCB3KUmv3vNi5Nb9Fj6ZQo14nK4ih
	mbGEmOA801013V1/wMQr7rh5cWtmZNgsmsmiOJ5tGQ0DCcbnlCncaAfuIYoxE3viEKwpchVMGcrMV
	I0FmJGu82037UlWR3KYZQBr2V37tq18IICYSVvUWoVtvTcQmYkufSkLaU4jt1dTFmECALvhjpa3IN
	Giq3Uu0oor4w68tt0nwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2IV-0006gc-Mr; Tue, 21 May 2019 10:47:07 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2IT-0006fm-1T
 for kexec@lists.infradead.org; Tue, 21 May 2019 10:47:06 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x4LAkXik006037
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 21 May 2019 19:46:33 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x4LAkXo0029763;
 Tue, 21 May 2019 19:46:33 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x4LAiEhb002991; 
 Tue, 21 May 2019 19:46:33 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.138] [10.38.151.138]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-5240706;
 Tue, 21 May 2019 19:43:31 +0900
Received: from BPXM12GP.gisp.nec.co.jp ([10.38.151.204]) by
 BPXC10GP.gisp.nec.co.jp ([10.38.151.138]) with mapi id 14.03.0319.002; Tue,
 21 May 2019 19:43:31 +0900
From: Junichi Nomura <j-nomura@ce.jp.nec.com>
To: Kairui Song <kasong@redhat.com>, Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Thread-Topic: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI
 systab and ACPI tables
Thread-Index: AQHVD7QFUJEBPcePeESpYMnbGSS4VaZ0zb0A
Date: Tue, 21 May 2019 10:43:30 +0000
Message-ID: <d9d9a627-d0e5-4ee6-7ce1-676db6cb60f4@ce.jp.nec.com>
References: <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv> <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv> <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv> <20190513075006.GB20105@zn.tnic>
 <20190513080210.GC16774@MiWiFi-R3L-srv>
 <20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp>
 <20190515065843.GA24212@zn.tnic>
 <20190515070942.GA17154@jeru.linux.bs1.fc.nec.co.jp>
 <CACPcB9cyiPc8JYmt1QhYNipSsJ5z3wTOJ90LS5LTx4YqwaG8rA@mail.gmail.com>
In-Reply-To: <CACPcB9cyiPc8JYmt1QhYNipSsJ5z3wTOJ90LS5LTx4YqwaG8rA@mail.gmail.com>
Accept-Language: en-US, ja-JP
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.125.85]
Content-ID: <C8CB98E7593A254FA2F953E6D7F99473@gisp.nec.co.jp>
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_034705_333104_63C97CB1 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2019/05/21 18:02, Kairui Song wrote:
> On Wed, May 15, 2019 at 3:10 PM Junichi Nomura <j-nomura@ce.jp.nec.com> wrote:
>> On 5/15/19 3:58 PM, Borislav Petkov wrote:
>>> On Wed, May 15, 2019 at 05:17:19AM +0000, Junichi Nomura wrote:
>>>> I found kexec(1) fails to load kernel on a few machines if this patch
>>>> is applied.  Those machines don't have IORES_DESC_ACPI_TABLES region
>>>> and have ACPI tables in IORES_DESC_ACPI_NV_STORAGE region instead.
>>>
>>> Why? What kind of machines are those?
>>
>> I don't know.  They are just general purpose Xeon-based servers
>> and not some special purpose machines.  So I guess there are other
>> such machines in the wild.
> 
> Hi, I think it's reasonable to update the patch to include the
> NV_STORAGE regions as well, most likely the firmware only provided
> NV_STORAGE region? Can you help confirm if the e820 didn't contain
> ACPI data, and only ACPI NVS?

Yes, those machines only have ACPI NVS region as far as I see from kernel log.

> I had a try with this update patch, it worked and didn't break anything.
> 
> Hi Boris, would you prefer to just fold Junichi update patch into the
> previous one or I should send an updated patch?

-- 
Jun'ichi Nomura, NEC Corporation / NEC Solution Innovators, Ltd.
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
