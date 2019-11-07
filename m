Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD929F3475
	for <lists+kexec@lfdr.de>; Thu,  7 Nov 2019 17:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gs5bxmc8x1xG4b9CK6MKUc3xPqBWeU8zkKDQe49Q+44=; b=afK7Qceefnwr/8
	+R3sQi8NH5PP8Hxz+Kl6IorLo1msafCj7zzNzA88XZ0D01aLmtrmrpYFLH0Vow2Fo8e66sVSJw5/a
	yV8Ksf0DjC5kDlZpPm1rPMd1vYWGPeGEtWTr6pbNGcumGbrTCl+mlWYzvzDmPX8RT+PCMr1rwm6et
	e2N6KnOFgg+RGK4nxo0XAb5TWZC0RhsYqi5jKCMv5jfQhWuSKNn2Za22krc9UnfSZCvhkxhgnO7vW
	7kykout7W/BnKV5WQD1lR1x0bGe2OKoqD4IgEA9tkaKLDwdYrESb1ansP/5cty7wTphyqeGT1dVUu
	+4IM1s1K7LzUvYYYEB9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkQO-0001gk-A4; Thu, 07 Nov 2019 16:14:20 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkQH-0001g4-RM
 for kexec@lists.infradead.org; Thu, 07 Nov 2019 16:14:15 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xA7GE87f022548
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 8 Nov 2019 01:14:08 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA7GE8Uq028356;
 Fri, 8 Nov 2019 01:14:08 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA7GE8h8032417; 
 Fri, 8 Nov 2019 01:14:08 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-559885;
 Fri, 8 Nov 2019 01:12:07 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Fri, 8
 Nov 2019 01:12:06 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Jones <davej@codemonkey.org.uk>
Subject: RE: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Topic: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Index: AdV+3GkEfQ9Ykbz/Q9OI6ddAj4Visv//hDSA/+Z3b+D/uLCzYA==
Date: Thu, 7 Nov 2019 16:12:06 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035949A4@BPXM09GP.gisp.nec.co.jp>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
 <20191009213855.GA14574@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593DA7@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03593DA7@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.134.144]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_081414_126455_5342F3FE 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

> -----Original Message-----
> >  > > There are some other failure cases with non-null data, so maybe there's >1 bug here.
> >  > > I've not seen an obvious pattern to this. eg...
> >  > >
> >  > > https://pastebin.com/2uM4sBCF
> >  > >
> >  >
> >  > As for this case, I suspect that Elf64_Ehdr.e_phnum overflows
> >  > (i.e. num_loads_dumpfile > 65535):
> >
> > Oh, good catch.  These are 256GB machines, so after discarding
> > everything, that explains why we end up with so many sections.
> > This also explains why it sometimes works I think, when the discarding
> > manages to get the total nr headers <64k.

I also could reproduce this issue on a system with 192GB memory.
The note was actually overwritten by the following program headers.
-----
num_loads_dumpfile=76318                # more than 64k
ehdr64.e_phnum=10783                    # overflowed
note.p_offset=0x93708 .p_filesz=0x2958  # The note data is at 0x93708
note cd_header->offset=0x40
...
    head->off=     90040 load.p_addr= 44552e000 .p_off=  ed270060 ...
                   ^^^^^ # these headers overwrote the note data.
    head->off=     a0040 load.p_addr= 445630000 .p_off=  ed272060 ...
...
The dumpfile is saved to dump.Ed25.devel.

makedumpfile Completed.

# readelf -a dump.Ed25.devel 
...
  Number of program headers:         10783
...
Displaying notes found at file offset 0x00093708 with length 0x00002958:
  Owner                 Data size       Description
                       0x00000007       Unknown note type: (0xdbce6060)
   description data: 00 00 7a 39 fffffff2 ffffff8a ffffffff
# ../crash vmlinux dump.Ed25.devel

WARNING: possibly corrupt Elf64_Nhdr: n_namesz: 4185522176 n_descsz: 3 n_type: f4000
...
WARNING: cannot read linux_banner string
crash: vmlinux and dump.Ed25.devel do not match!
-----

> I think this will be the one of the causes, and had a look at how
> we can fix it.  If you get a vmcore where this pattern occurs,
> you can try this tree:
> https://github.com/k-hagio/makedumpfile/tree/support-extended-elf
> 
> Then, the crash utility also needs a patch to support a dumpfile
> that has more than 64k program headers:
> https://github.com/k-hagio/crash/tree/support-extended-elf

These trees look to work well, though need more tests and tweaks.
-----
# readelf -a dump.Ed25.test
...
  Number of program headers:         65535 (76319)  <<-- note + loads
...
Displaying notes found at file offset 0x00413748 with length 0x00002958:
  Owner                 Data size       Description
  CORE                 0x00000150       NT_PRSTATUS (prstatus structure)
  CORE                 0x00000150       NT_PRSTATUS (prstatus structure)
  CORE                 0x00000150       NT_PRSTATUS (prstatus structure)
...
# ../crash-test vmlinux dump.Ed25.test

crash-test> help -D
vmcore_data: 
                  flags: c0 (KDUMP_LOCAL|KDUMP_ELF64) 
                   ndfd: 3
                    ofp: 3141560
            header_size: 4284576
   num_pt_load_segments: 76318   <<-- loads
     pt_load_segment[0]:
-----

It is possible that the issue occurs on general systems if they have
large memory, so I'm going to proceed with those patches.

Thanks,
Kazu



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
