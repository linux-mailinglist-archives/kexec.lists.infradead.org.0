Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96BA105C4C
	for <lists+kexec@lfdr.de>; Thu, 21 Nov 2019 22:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMLAKvZ9R5xq6w+DmgjpPJged0knLqa029kHenpzoqc=; b=j9BIxaRBQ2r13M
	NEua7Wn7PHBS9tr15r4exjQ2efdu9mHIe4nkiNreUaq/B6Ewvjk9QbK0TY8B2cx0U7ZvEwiwX4X8q
	jPirl2mwp98tcDfBiyIy4hfny/6kuHVxFe/qHhLtydtk4evjkoR8d3NtcI1ddGziC5ePPmj0fWFO6
	wvwrKhNfO5sLcbcUQ4gi3uhXRuVU1hsnAaP22AmWbmeEPpat80HjKWbIkU2yqY3OSL3iCsn4CU4DO
	Bcn30zb2rmWYPM26z6noTsZhAS20y7IzljJOoJRxxXWgMPgJNSWfspWQTQY+wxCmIyurneeYDhryd
	OxQuuSaEWG6psXM1duLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXuND-0001uz-HP; Thu, 21 Nov 2019 21:52:23 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXuN9-0001uZ-Gl
 for kexec@lists.infradead.org; Thu, 21 Nov 2019 21:52:21 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xALLnpOV136637;
 Thu, 21 Nov 2019 21:52:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=PdErWuPBEwEjJa/tMQtDPVdEq/UcjW6ueGdjiPFo7TI=;
 b=NpOIbS3xVpFa40txyx0Z8ROWrdiM4VQTnEeIYPWzRRIwioOulR/BY06Xne2bEIeCGUTx
 tmX0d/diy2K7eqNLnPJvZszJ1H/AIN9dU9EdAF8F+9AgDejz8myOwD04s7T5cx3iQ8j+
 PWr8qaGalyj9JbkYVloSARF8DRL6ueO6fvNrXvc3GK8aPAS86eytH+vLAqJTQNlvejnp
 brT+cDMSkVAH76RQMNAjt56gX/vXSnLAj1YAtdq34fJkmjtRUdI4zj16gFztyt4I4mIE
 pF7YUsjPiHC3adNx0w0ktncN3ghxThBU4fa5M5IXZNb8i+t4E0ckGRdRPgnqpaMNVG/l Tg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2wa9rqy31f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2019 21:52:14 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xALLiDgG087221;
 Thu, 21 Nov 2019 21:52:13 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2wdfrv6kaj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2019 21:52:13 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xALLqBPs026866;
 Thu, 21 Nov 2019 21:52:12 GMT
Received: from dhcp-10-154-114-246.vpn.oracle.com (/10.154.114.246)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 21 Nov 2019 13:52:10 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <F5504C62-6D51-4E37-AA35-269FEA7AE480@oracle.com>
Date: Thu, 21 Nov 2019 15:52:05 -0600
Message-Id: <C825B090-610A-4EFE-9292-57DDD4832BA6@oracle.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
 <B71B3868-9A0B-46AD-8777-97A1599BFB91@oracle.com>
 <CACi5LpOF2FLrmXEyJ4FfjqJBxxt-np2+1V0EFK__EH=6ubFE0A@mail.gmail.com>
 <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
 <CACi5LpO9hRKotoMAgEQiLPEHWm7DO_NXWmTL1Wcfi3A0OyGJMQ@mail.gmail.com>
 <4C21663E-4E3B-402D-96FD-BD7623C6628A@oracle.com>
 <F5504C62-6D51-4E37-AA35-269FEA7AE480@oracle.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911210181
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911210182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_135219_645263_1498C8A8 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



> On Nov 21, 2019, at 1:20 PM, John Donnelly <john.p.donnelly@oracle.com> wrote:
> 
> 
> 
>> On Nov 21, 2019, at 10:59 AM, John Donnelly <john.p.donnelly@oracle.com> wrote:
>> 
>> 
>> 
>>> On Nov 21, 2019, at 10:32 AM, Bhupesh Sharma <bhsharma@redhat.com> wrote:
>>> 
>>>> On Wed, Nov 20, 2019 at 10:03 PM John Donnelly <john.p.donnelly@oracle.com> wrote:
>>>> 
>>>> Hi,
>>>> 
>>>> Recent test below
>>>> This is your makedumpfile pulled from sourceforge .
>>> 
>>> Do you mean github? I don't remember pushing anything to sourceforge.
>>> Please share the exact branch name and the source URL for the
>>> makedumpfile you are using
>> 
>> Hi,   You are correct -  GitHub -    I used your url posted below ; I do not see the arch/arm64.c changes in the zip  version I downloaded . 
>> 
>> I am not a GUI/gitlab user. Can you please send a  tarball copy of your working makedumpfile   CLI  via email and I will verify it works.
>> 
> 
> 
>  Hi 
> 
> 
>   I was able to fork and clone your work area .
> 
> I can see makedumpfile works now ! 
> 
> Fantastic ;;  Thank you for your patience !
> 



   I did some basic unit tests. 

   This patch for  makedumpfile  ONLY WORKS on 5.4.0-rc8 kernel. 

  It does not work with a previous 4.18 kernel. 

 Is this suppose to be backwards compatible  ?





> 
> 
> 
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_kexec&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=qzvbWFi4jiB58rXJ3WWlsBhMaCE050Bl3F630z5cxZQ&s=06v1wglHOpFgEZdqr06KBrYVdp3SPc6GuQ88d6Mo_24&e= 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
