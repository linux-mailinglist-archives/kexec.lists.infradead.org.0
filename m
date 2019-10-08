Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7307D02EA
	for <lists+kexec@lfdr.de>; Tue,  8 Oct 2019 23:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78ubV7EnZRbp1w+i6qKtpyhecM4tC/OsSKCLUB0BXiY=; b=DFCnTZTrYLLaig
	bSGF8GefjWTZrL7/7xdTkmYccLFPBLw/RvgKjoFY8atg15jsIfGlCi+XNgdq51SOItBb2+t9EyoDs
	SSAFZ5oGA4HdGAZiBDoQejaiOzHhYR0T6V2xdZTJJJVoc08l1d6lAayWU8bUyqD6pfwtfPx8bcqzA
	VFWUz5FO83CaSbmzj9+BfZO0UM1h6COZFZOu28YUJkqwRSO/jmpOjsr6RZpo72eb4BQgmlqL7eeIG
	ojBFBW6M8Hq7R25uZFHsCtjqi9oaLBlo7igjQcqQXCiJJwvNv2WNGIaf/05wKiE0D06GN7lrl4Hsc
	LfJuIQ7SRp4T3LZmfgOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxAu-0007DE-BE; Tue, 08 Oct 2019 21:37:44 +0000
Received: from scorn.kernelslacker.org ([2600:3c03:e000:2fb::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxAq-0007Ch-GL
 for kexec@lists.infradead.org; Tue, 08 Oct 2019 21:37:42 +0000
Received: from [2601:196:4600:6634:ae9e:17ff:feb7:72ca]
 (helo=wopr.kernelslacker.org)
 by scorn.kernelslacker.org with esmtp (Exim 4.92)
 (envelope-from <davej@codemonkey.org.uk>)
 id 1iHxAj-0005NA-FS; Tue, 08 Oct 2019 17:37:33 -0400
Received: by wopr.kernelslacker.org (Postfix, from userid 1026)
 id 20D6F56018A; Tue,  8 Oct 2019 17:37:33 -0400 (EDT)
Date: Tue, 8 Oct 2019 17:37:33 -0400
From: Dave Jones <davej@codemonkey.org.uk>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Subject: Re: makedumpfile: Fix divide by zero in print_report()
Message-ID: <20191008213733.GA21304@codemonkey.org.uk>
References: <20190924194005.GA7666@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359079B@BPXM09GP.gisp.nec.co.jp>
 <20190926193253.GA10258@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035909ED@BPXM09GP.gisp.nec.co.jp>
 <20191004170357.GA12416@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359146E@BPXM09GP.gisp.nec.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC0359146E@BPXM09GP.gisp.nec.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: SpamAssassin invocation failed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_143740_544065_9531926B 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Mon, Oct 07, 2019 at 08:13:07PM +0000, Kazuhito Hagio wrote:
 
 > > [  518.819690] Original pages  : 0x0000000000000000
 > > [  518.828894]   Excluded pages   : 0x0000000003decd15
 > > [  518.838635]     Pages filled with zero  : 0x00000000000210ee
 > > [  518.849920]     Non-private cache pages : 0x000000000000271a
 > > [  518.861218]     Private cache pages     : 0x000000000000da47
 > > [  518.872502]     User process data pages : 0x0000000003d6bdc8
 > > [  518.883786]     Free pages              : 0x000000000004fcfe
 > > [  518.895070]     Hwpoison pages          : 0x0000000000000000
 > > [  518.906356]     Offline pages           : 0x0000000000000000
 > > [  518.917659]   Remaining pages  : 0xfffffffffc2132eb
 > > [  518.927398] Memory Hole     : 0x0000000004080000
 >
 > This is the known issue that I wrote above and am looking for a safe fix.
 > How does this patch work?

I'll give this a try, and see how it goes for a few days.

 > If it looks good, I'll look into its side effects further,
 > but might take some time..


 > > And the crashdump seems corrupt:
 > > 
 > Could you show me the output of "readelf -a vmcore"?

See below.

 > Does this issue always reproduce?

Not 100% the time. Sometimes we do get valid dumps from these hosts.
My guess so far is that it has something to do with how much of memory
makedumpfile was able to discard with -d31


Common case seems to be:

<F28>ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              CORE (Core file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
  Entry point address:               0x0
  Start of program headers:          64 (bytes into file)
  Start of section headers:          0 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           56 (bytes)
  Number of program headers:         23881
  Size of section headers:           0 (bytes)
  Number of section headers:         0
  Section header string table index: 0

There are no sections in this file.

There are no sections to group in this file.

Program Headers:
  Type           Offset             VirtAddr           PhysAddr
                 FileSiz            MemSiz              Flags  Align
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
... <repeats for thousands of lines>
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0
  NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000         0

There is no dynamic section in this file.

There are no relocations in this file.

The decoding of unwind sections for machine type Advanced Micro Devices X86-64 is not currently supported.

Dynamic symbol information is not available for displaying symbols.

No version information found in this file.



There are some other failure cases with non-null data, so maybe there's >1 bug here.
I've not seen an obvious pattern to this. eg...

https://pastebin.com/2uM4sBCF



I'll put your patch on some of the affected hosts and see if this
changes behaviour in any way.

thanks,
	Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
