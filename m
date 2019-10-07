Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5107ACED37
	for <lists+kexec@lfdr.de>; Mon,  7 Oct 2019 22:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jg+3lhvoImgu83SizQe9/gOdGQQJffz2GxmUgOHw9jo=; b=DQpoofWVNUSnFZ
	7BV1i8rKxkvyZx0FSQsZ8xaKUtqnsz3dv641Zv9O2VixjtPtXjPTd9uFGjt5B+Rc2tg1EQ9518Zmt
	kFlEz02tOlJtHLnOmzJGJaX8rlIogis1W5vlUrDNT2808uaT5R/y+6y9GmrrrM+NtLxLEHqt+O2Zd
	ZHIPKtTUkVic0pDA4MbBEBQGIG6roeuI+9FgrMZDLZGBP7tqbMSIFW4sZQDDwNVPFexHp2vAaKuh8
	Qf9+Q7Txt0Eizp1P/fSho05oP0zMSNBJ4OuGotXfN0dKBRFCwsEsIkQHWIdEAPrJjvAFAGiY9/sJu
	ZiNmWi0jui4x2dGB9vEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZP0-0007ir-S4; Mon, 07 Oct 2019 20:14:42 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZOw-0007iG-OK
 for kexec@lists.infradead.org; Mon, 07 Oct 2019 20:14:40 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x97KENZN020588
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 8 Oct 2019 05:14:23 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x97KENsH023774;
 Tue, 8 Oct 2019 05:14:23 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x97KEN87000608;
 Tue, 8 Oct 2019 05:14:23 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-9181007;
 Tue, 8 Oct 2019 05:13:09 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Tue, 8
 Oct 2019 05:13:08 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Jones <davej@codemonkey.org.uk>
Subject: RE: makedumpfile: Fix divide by zero in print_report()
Thread-Topic: makedumpfile: Fix divide by zero in print_report()
Thread-Index: AQHVcw/g+V5I957X20SkpJOpVNgNBac8j8FggAE1oICAAiLZQIAKRjGAgAV6U+A=
Date: Mon, 7 Oct 2019 20:13:07 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC0359146E@BPXM09GP.gisp.nec.co.jp>
References: <20190924194005.GA7666@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359079B@BPXM09GP.gisp.nec.co.jp>
 <20190926193253.GA10258@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035909ED@BPXM09GP.gisp.nec.co.jp>
 <20191004170357.GA12416@codemonkey.org.uk>
In-Reply-To: <20191004170357.GA12416@codemonkey.org.uk>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.133.224]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_131439_211693_3696E2E9 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [114.179.232.162 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> On Fri, Sep 27, 2019 at 08:39:04PM +0000, Kazuhito Hagio wrote:
>  > > -----Original Message-----
>  > > On Thu, Sep 26, 2019 at 06:41:48PM +0000, Kazuhito Hagio wrote:
>  > >
>  > >  > > -----Original Message-----
>  > >  > > If info->max_mapnr and pfn_memhole are equal, we divide by zero when
>  > >  > > trying determine the 'shrinking' value.
>  > >  > >
>  > >  > > On the system I saw this error, we arrived at this function with
>  > >  > > info->max_mapnr:0x0000000001080000 pfn_memhole:0x0000000001080000
>  > >  >
>  > >  > Thank you for the patch.
>  > >  > I suppose that you see the error with the -E option, right?
>  > >  >
>  > >  > It seems that the -E option has some problems with its statistics,
>  > >  > so I'm checking whether there is a better way to fix this.
>  > >
>  > > Yes, we use the -E option.
>  > > We manage to get useful info from the generated dump after this fix, so
>  > > it seems it only affects the statistics output.
>  >
>  > OK, the statistics in cyclic mode with the -E option is completely wrong
>  > but a possible fix is likely to affect the whole of cyclic processing, so
>  > I just cover the hole with your patch and leave the statistics problem as
>  > a known issue at this time.  I would revisit it when I have time.
>  >
>  > The patch was applied to the devel branch.
> 
> While this patch does avoid the divide by zero, some further analysis
> shows that there seems to be some deeper problem when we encounter this
> 'original pages = 0' situation.
> 
> Take a look at the attached output from makedumpfile.
> 
> Key part in the summary:
> 
> [  518.819690] Original pages  : 0x0000000000000000
> [  518.828894]   Excluded pages   : 0x0000000003decd15
> [  518.838635]     Pages filled with zero  : 0x00000000000210ee
> [  518.849920]     Non-private cache pages : 0x000000000000271a
> [  518.861218]     Private cache pages     : 0x000000000000da47
> [  518.872502]     User process data pages : 0x0000000003d6bdc8
> [  518.883786]     Free pages              : 0x000000000004fcfe
> [  518.895070]     Hwpoison pages          : 0x0000000000000000
> [  518.906356]     Offline pages           : 0x0000000000000000
> [  518.917659]   Remaining pages  : 0xfffffffffc2132eb
> [  518.927398] Memory Hole     : 0x0000000004080000
> 
> In this case, 'remaining pages' has gone negative which looks concerning.

This is the known issue that I wrote above and am looking for a safe fix.
How does this patch work?

--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -56,6 +56,9 @@ static void first_cycle(mdf_pfn_t start, mdf_pfn_t max, struct cycle *cycle)
	if (cycle->end_pfn > max)
		cycle->end_pfn = max;
 
+	if (cycle->start_pfn < start)
+		cycle->start_pfn = start;
+
	cycle->exclude_pfn_start = 0;
	cycle->exclude_pfn_end = 0;
 }
@@ -7595,6 +7598,9 @@ write_elf_pages_cyclic(struct cache_data *cd_header, struct cache_data *cd_page)
			}
 
			for (pfn = MAX(pfn_start, cycle.start_pfn); pfn < cycle.end_pfn; pfn++) {
+				if (info->flag_cyclic)
+					pfn_memhole--;
+
				if (!is_dumpable(info->bitmap2, pfn, &cycle)) {
					num_excluded++;
					if ((pfn == pfn_end - 1) && frac_tail)

If it looks good, I'll look into its side effects further,
but might take some time..

> 
> And the crashdump seems corrupt:
> 
> 'crash' complains:
> WARNING: possibly corrupt Elf64_Nhdr: n_namesz: 2079035392 n_descsz: 3 n_type: 1000
> 
> vmcore-dmesg complains "Missing the log_buf symbol", even though the makedumpfile log
> shows it was present at ffffffff822510a0
> 
> Readelf seems to think the notes sections are mangled.
> 
> # readelf -n vmcore
> 
> Displaying notes found at file offset 0x00015468 with length 0x0000556c:
>   Owner                 Data size       Description
>                        0x00000007       Unknown note type: (0x727c79d4)
> readelf: vmcore: Warning: Corrupt note: name size is too big: 7beb9000
>   (NONE)               0x00000003       Unknown note type: (0x00001000)
> readelf: vmcore: Warning: Corrupt note: name size is too big: 55a000
>   (NONE)               0x00000000       Unknown note type: (0x00000000)
>   (NONE)               0x00000001       Unknown note type: (0x00000007)
> readelf: vmcore: Warning: note with invalid namesz and/or descsz found at offset 0x44
> readelf: vmcore: Warning:  type: 0xffff8803, namesize: 0x00000000, descsize: 0x7c413000

I don't think that the statistics issue corrupts a dumpfile itself
so far.  Could you show me the output of "readelf -a vmcore"?
Does this issue always reproduce?

Thanks,
Kazu

> 
> 
> 
> Any thoughts on where to add additional debugging in makedumpfile ?
> 
> 	Dave



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
