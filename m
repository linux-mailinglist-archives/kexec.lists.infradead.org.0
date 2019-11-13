Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEBBFB8F7
	for <lists+kexec@lfdr.de>; Wed, 13 Nov 2019 20:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxZB2gSeedqWcxa6QnA28g0vATH4dzAywmmcW2SlDws=; b=hD3+jtVDP7bcgB
	WnJiao+43nnZ/nOMtCabTQ/nrPlbotxR3toDx7w3T7H/EMkBzDJYHdNFC1/aOmrUS+dRX3RXeOs7g
	zpn3Km3xpi8yJFQCYrI9aXndAhHGB4pYDUzVI79GBhoBrB3wYe/TUOhu7xt0LdKB3yBpInmNmEJ0c
	hmgwWTxEQL3bsBdoJwlVEYvHqheXWZ0L70J0Y/81Mp3QNcI+J3RtSzT6/YuAn7qcMWV3kfYk2ri/r
	0LAh6e3mZTf8QZbTVKa+hDl30FpdDdEVbIcMd8YIrnt6hyZu7inrXh82RCIVA3S1qFqpdo25geoiW
	QBIHyANUf8t5PkxeP6AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUySY-00021p-V3; Wed, 13 Nov 2019 19:37:46 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUySQ-00021B-VB
 for kexec@lists.infradead.org; Wed, 13 Nov 2019 19:37:41 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xADJbXC3004670
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 14 Nov 2019 04:37:33 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xADJbXsS032106;
 Thu, 14 Nov 2019 04:37:33 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xADJbXtf020884; 
 Thu, 14 Nov 2019 04:37:33 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-728370;
 Thu, 14 Nov 2019 04:36:03 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Thu,
 14 Nov 2019 04:36:02 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Jones <davej@codemonkey.org.uk>
Subject: RE: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Topic: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Index: AdV+3GkEfQ9Ykbz/Q9OI6ddAj4Visv//hDSA/+Z3b+D/uLCzYP9ntB8Q
Date: Wed, 13 Nov 2019 19:36:01 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03595014@BPXM09GP.gisp.nec.co.jp>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
 <20191009213855.GA14574@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593DA7@BPXM09GP.gisp.nec.co.jp>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035949A4@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC035949A4@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.196]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_113739_230529_67BE5E9B 
X-CRM114-Status: GOOD (  16.57  )
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

Hi Dave,

I think I've fixed the ELF issues which I could reproduce:
- wrong statistics
- e_phnum overflow

If you still see any problems with the latest makedumpfile,
please let me know.

Thanks,
Kazu

> -----Original Message-----
> > -----Original Message-----
> > >  > > There are some other failure cases with non-null data, so maybe there's >1 bug here.
> > >  > > I've not seen an obvious pattern to this. eg...
> > >  > >
> > >  > > https://pastebin.com/2uM4sBCF
> > >  > >
> > >  >
> > >  > As for this case, I suspect that Elf64_Ehdr.e_phnum overflows
> > >  > (i.e. num_loads_dumpfile > 65535):
> > >
> > > Oh, good catch.  These are 256GB machines, so after discarding
> > > everything, that explains why we end up with so many sections.
> > > This also explains why it sometimes works I think, when the discarding
> > > manages to get the total nr headers <64k.
> 
> I also could reproduce this issue on a system with 192GB memory.
> The note was actually overwritten by the following program headers.
> -----
> num_loads_dumpfile=76318                # more than 64k
> ehdr64.e_phnum=10783                    # overflowed
> note.p_offset=0x93708 .p_filesz=0x2958  # The note data is at 0x93708
> note cd_header->offset=0x40
> ...
>     head->off=     90040 load.p_addr= 44552e000 .p_off=  ed270060 ...
>                    ^^^^^ # these headers overwrote the note data.
>     head->off=     a0040 load.p_addr= 445630000 .p_off=  ed272060 ...
> ...
> The dumpfile is saved to dump.Ed25.devel.
> 
> makedumpfile Completed.
> 
> # readelf -a dump.Ed25.devel
> ...
>   Number of program headers:         10783
> ...
> Displaying notes found at file offset 0x00093708 with length 0x00002958:
>   Owner                 Data size       Description
>                        0x00000007       Unknown note type: (0xdbce6060)
>    description data: 00 00 7a 39 fffffff2 ffffff8a ffffffff
> # ../crash vmlinux dump.Ed25.devel
> 
> WARNING: possibly corrupt Elf64_Nhdr: n_namesz: 4185522176 n_descsz: 3 n_type: f4000
> ...
> WARNING: cannot read linux_banner string
> crash: vmlinux and dump.Ed25.devel do not match!
> -----
> 
> > I think this will be the one of the causes, and had a look at how
> > we can fix it.  If you get a vmcore where this pattern occurs,
> > you can try this tree:
> > https://github.com/k-hagio/makedumpfile/tree/support-extended-elf
> >
> > Then, the crash utility also needs a patch to support a dumpfile
> > that has more than 64k program headers:
> > https://github.com/k-hagio/crash/tree/support-extended-elf
> 
> These trees look to work well, though need more tests and tweaks.
> -----
> # readelf -a dump.Ed25.test
> ...
>   Number of program headers:         65535 (76319)  <<-- note + loads
> ...
> Displaying notes found at file offset 0x00413748 with length 0x00002958:
>   Owner                 Data size       Description
>   CORE                 0x00000150       NT_PRSTATUS (prstatus structure)
>   CORE                 0x00000150       NT_PRSTATUS (prstatus structure)
>   CORE                 0x00000150       NT_PRSTATUS (prstatus structure)
> ...
> # ../crash-test vmlinux dump.Ed25.test
> 
> crash-test> help -D
> vmcore_data:
>                   flags: c0 (KDUMP_LOCAL|KDUMP_ELF64)
>                    ndfd: 3
>                     ofp: 3141560
>             header_size: 4284576
>    num_pt_load_segments: 76318   <<-- loads
>      pt_load_segment[0]:
> -----
> 
> It is possible that the issue occurs on general systems if they have
> large memory, so I'm going to proceed with those patches.
> 
> Thanks,
> Kazu
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
