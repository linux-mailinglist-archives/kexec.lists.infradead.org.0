Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6845F3976
	for <lists+kexec@lfdr.de>; Thu,  7 Nov 2019 21:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1zGvFhli0G06H16zbKrCBWSNNLPt3CPuyor7y19TW8=; b=GBxJiutNR6bGuu
	NLrzuSH/E6iSjjARHmIEWNfJE2OLfAdYY/oPRhfbGxpy3g6ZIX+2C+bGkmQwpv62LkY3ECXZ/fLm9
	NXd6N8O5WfVyrliJFf05YPbOB26m/NY6fwMf3N42CAGgWNdFZOYciIuqjq/9bPWDEMHFDskmQoBWP
	o/hx3og/UQY2BC3Ben74BugVKckno9eIgVi0SKbHPip+hTMQupkBITUqNLBsjJ91xyHb4sh9bsBeq
	4Z3flS0Ikxrn10sg8sLvw5xympXYRUy7OrgLvdC3bFTjondXVY/aoJ7QI2HpRjlJI8y8eq74ulvQ1
	Q2KuNu1m2SUqFYlnS1ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoFs-0000Dn-1b; Thu, 07 Nov 2019 20:19:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoEU-0007KM-NR
 for kexec@lists.infradead.org; Thu, 07 Nov 2019 20:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573157895;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D8QifhMO7XE7x+uTp6PGsve7lrxkl8FB30xjGPBnpTQ=;
 b=M+sqqMKsOpkYPjgDUDYqyKhO8Aa2DCR5GRJJRJ8TzicYp+E5CcCywNsLfLf2xERotbqXXb
 1Ro6KeGKvhEc5tlqk+i6+t56W3ywAYred9O+YVOyBPz8U6tNuyFS2g4zmBvn0FfPt85jm2
 9uZ932hHRirCu0WStkAqZVuf3N9ka50=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-FQCGDWL5POGhfPMpzxXTAQ-1; Thu, 07 Nov 2019 15:18:13 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83A10800C61;
 Thu,  7 Nov 2019 20:18:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 77C391001B07;
 Thu,  7 Nov 2019 20:18:11 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 30E1018095FF;
 Thu,  7 Nov 2019 20:18:11 +0000 (UTC)
Date: Thu, 7 Nov 2019 15:18:11 -0500 (EST)
From: Dave Anderson <anderson@redhat.com>
To: kexec@lists.infradead.org
Message-ID: <651227040.10956407.1573157891163.JavaMail.zimbra@redhat.com>
In-Reply-To: <mailman.7.1573156802.22483.kexec@lists.infradead.org>
References: <mailman.7.1573156802.22483.kexec@lists.infradead.org>
Subject: RE: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report()) (Kazuhito Hagio)
MIME-Version: 1.0
X-Originating-IP: [10.18.17.5, 10.4.195.2]
Thread-Topic: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide by
 zero in print_report()) (Kazuhito Hagio)
Thread-Index: E1PUFshjQOKUvztkl22nrdMrrjXbcA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: FQCGDWL5POGhfPMpzxXTAQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121818_968427_1567E039 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: k-hagio@ab.jp.nec.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



----- Original Message -----
> Date: Thu, 7 Nov 2019 16:12:06 +0000
> From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> To: Dave Jones <davej@codemonkey.org.uk>
> Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
> Subject: RE: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide by zero in print_report())
> Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035949A4@BPXM09GP.gisp.nec.co.jp>
> Content-Type: text/plain; charset="iso-2022-jp"
> 
> Hi,
> 
> > -----Original Message-----
> > >  > > There are some other failure cases with non-null data, so maybe
> > >  > > there's >1 bug here.
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
> WARNING: possibly corrupt Elf64_Nhdr: n_namesz: 4185522176 n_descsz: 3
> n_type: f4000
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

Hi Kazu,

Do you want me to go ahead with the crash utility patch?  It looks
safe enough to apply, and I did test it to make sure there were no
ill-effects with sample ELF dumpfiles.

Thanks,
  Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
