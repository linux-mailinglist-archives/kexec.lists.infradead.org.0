Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EB9FFDC3
	for <lists+kexec@lfdr.de>; Mon, 18 Nov 2019 06:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCuY0UepHvjL3t4M8hGDLjutS+Mq5+iTglIWW1rid+Y=; b=j84uCMWsKCIvha
	zMufWEYlhQozmlekEyCIyeohmnXEWzTF9ulCwRa4ctT4J8GavWBNgAyv9PRBeSnST8Lg8eQOxoQAn
	5gu/Gj+L59HU2qQO62Rl5GeyqI5YAkTtHr/fVUJm3O55WN97HK9mksdGIK/Wjih5vmqhLym1OcyDr
	A+sE1njsSoiZDurkfFhuKJh31yKHQJ608bOiX5lC5Qw9gDVGPf2WIiFNZ7eFPY4T8sqhCKK9HcGdm
	aUVQ3zbOzcZ1CGs3MHj/1hIuaOC7qNrviP3ZQTAO25iZsuYkygpZ7JLVXndsrdEZiuIGB9yaIwafK
	1HF7TFbsVpf5TlNFj3wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWZKq-00052Q-I0; Mon, 18 Nov 2019 05:12:24 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWZKn-00051Z-2T
 for kexec@lists.infradead.org; Mon, 18 Nov 2019 05:12:22 +0000
Received: by mail-il1-x141.google.com with SMTP id q1so14791087ile.13
 for <kexec@lists.infradead.org>; Sun, 17 Nov 2019 21:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gc0Vh1HSacMdh1Wogm1edpIRm0UZnGE2y65ojA1UUZc=;
 b=Jh6Tmlrk7i4bO8crJKyC0H9dcLLZn1v8E+TB5EUR/BOeUIypmRUdXN/d/HjAiw88IZ
 Xks4qAuxaBjgRlepl4jqPwEyAqbq2iO/HTjU2H/cCcANehJf+u7whq3FFpBXEtDF4DvO
 HDyzCe/AsIt07jARDpJ61veuUdPlZBCm0Q9QXrSkJMMO48fKqiXgivRJnqcOFhhSdHKc
 aMYJ8rPsP6kufW2u0wCa7PvnAwmXqL5PISxEiZ5YJsI2Y4OIay32c39nHfkHTN4Ut1F/
 o7OsxRwXHwWubmoMdV16qaW0rNyGyFqazuaag7zPoOdap8DWWwnlDu7A81hs5rXZ4nVQ
 iHQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gc0Vh1HSacMdh1Wogm1edpIRm0UZnGE2y65ojA1UUZc=;
 b=HD5ns/z4eFuXrlHifOUjuZftJTnNQ12mPoqcjgxLMTmYfAcKKB/zS+fyiV0eauVqBE
 XvZuhXn4VcFCh3GMJl3B0C6RZhCBjwZy+OVDi82/EV+gIdFTZPP+4ZXVwydjkQy3zz+N
 Z2BlxHmo6pW6Yt5jS6X4Z8QVwQVXX+GwA/42es4LOFFTAvf1bVSC21tFt4da1pqyFOpu
 UFk9fmOoD6/MZP25Ex1ncgHDx2NktNxZac+zN+ZrAu6I4sHlwQ9Q09zY9psJFgN45UKk
 v9qwKs80DUicZq2s6fb74Ysc5STbSpsszxh1Uw5BfNKDBoagmZlVrR1MTnI4PwVD4Arc
 bDuw==
X-Gm-Message-State: APjAAAWUDf4czYevyq9jmWbtNrLX8z7Ta0haUmAMHdtLtI8MBcUVsp36
 i1iH9s0Ya2JZQLbdyrEF1cDv4Vy/ELMyOc34HAk=
X-Google-Smtp-Source: APXvYqx5AHgmx6W+ff6Q8Y1JqJW/nSIioaumnJQ1XkaNZkjq/H1albvsTLLui3nTcBdofTCsJajesEtS69Ibr44WQQ0=
X-Received: by 2002:a92:9adb:: with SMTP id c88mr13662599ill.193.1574053936583; 
 Sun, 17 Nov 2019 21:12:16 -0800 (PST)
MIME-Version: 1.0
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
In-Reply-To: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 18 Nov 2019 10:42:05 +0530
Message-ID: <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_211221_141652_5E5F6C43 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, bhupesh.linux@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Re-sending in plain text mode.

On Tue, Nov 12, 2019 at 4:39 PM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Changes since v3:
> ----------------
> - v3 can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-March/022534.html
> - Added a new patch (via [PATCH 4/4]) which marks '--mem-usage' option as
>   unsupported for arm64 architecture. With the newer arm64 kernels
>   supporting 48-bit/52-bit VA address spaces and keeping a single
>   binary for supporting the same, the address of
>   kernel symbols like _stext, which could be earlier used to determine
>   VA_BITS value, can no longer to determine whether VA_BITS is set to 48
>   or 52 in the kernel space. Hence for now, it makes sense to mark
>   '--mem-usage' option as unsupported for arm64 architecture until
>   we have more clarity from arm64 kernel maintainers on how to manage
>   the same in future kernel/makedumpfile versions.
>
> Changes since v2:
> ----------------
> - v2 can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-February/022456.html
> - I missed some comments from Kazu sent on the LVA v1 patch when I sent
>   out the v2. So, addressing them now in v3.
> - Also added a patch that adds a tree-wide feature to read
>   'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).
>
> Changes since v1:
> ----------------
> - v1 was sent as two separate patches:
>   http://lists.infradead.org/pipermail/kexec/2019-February/022424.html
>   (ARMv8.2-LPA)
>   http://lists.infradead.org/pipermail/kexec/2019-February/022425.html
>   (ARMv8.2-LVA)
> - v2 combined the two in a single patchset and also addresses Kazu's
>   review comments.
>
> This patchset adds support for ARMv8.2 extensions in makedumpfile code.
> I cover the following two cases with this patchset:
>  - 48-bit kernel VA + 52-bit PA (LPA)
>  - 52-bit kernel VA (LVA) + 52-bit PA (LPA)
>  - 48-bit kernel VA + 52-bit user-space VA (LVA)
>  - 52-bit kernel VA + 52-bit user-space VA (Full LVA)
>
> This has been tested for the following user-cases:
> 1. Creating a dumpfile using /proc/vmcore,
> 2. Creating a dumpfile using /proc/kcore, and
> 3. Post-processing a vmcore.
>
> I have tested this patchset on the following platforms, with kernels
> which support/do-not-support ARMv8.2 features:
> 1. CPUs which don't support ARMv8.2 features, e.g. qualcomm-amberwing,
>    ampere-osprey.
> 2. Prototype models which support ARMv8.2 extensions (e.g. ARMv8 FVP
>    simulation model).
>
> Also a preparation patch has been added in this patchset which adds a
> common feature for archs (except arm64, for which similar support is
> added via subsequent patch) to retrieve 'MAX_PHYSMEM_BITS' from
> vmcoreinfo (if available).
>
> I recently posted two kernel patches (see [0] and [1]) which append
> 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' to vmcoreinfo in the kernel
> code, so that user-space code can benefit from the same.
>
> This patchset ensures backward compatibility for kernel versions in
> which 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' are not available in
> vmcoreinfo.
>
> [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html
> [1]. http://lists.infradead.org/pipermail/kexec/2019-November/023962.html
>
> Cc: John Donnelly <john.p.donnelly@oracle.com>
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> Cc: kexec@lists.infradead.org
>
> Bhupesh Sharma (4):
>   tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from vmcoreinfo (if available)
>   makedumpfile/arm64: Add support for ARMv8.2-LPA (52-bit PA support)
>   makedumpfile/arm64: Add support for ARMv8.2-LVA (52-bit kernel VA
>     support)
>   makedumpfile: Mark --mem-usage option unsupported for arm64
>
>  arch/arm.c     |   8 +-
>  arch/arm64.c   | 438 ++++++++++++++++++++++++++++++++++++++++++---------------
>  arch/ia64.c    |   7 +-
>  arch/ppc.c     |   8 +-
>  arch/ppc64.c   |  49 ++++---
>  arch/s390x.c   |  29 ++--
>  arch/sparc64.c |   9 +-
>  arch/x86.c     |  34 +++--
>  arch/x86_64.c  |  27 ++--
>  makedumpfile.c |   7 +
>  makedumpfile.h |   3 +-
>  11 files changed, 439 insertions(+), 180 deletions(-)
>
> --

Tested this patch-set on Marvell's TX2 platform on top
commit(82e6cce2219a) of https://git.code.sf.net/p/makedumpfile/code
(devel branch)

Tested-by: Prabhakar Kushwaha <pkushwaha@marvell.com>

--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
