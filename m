Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32F7105A4C
	for <lists+kexec@lfdr.de>; Thu, 21 Nov 2019 20:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfCXhZDo/ufZ1xFrAZElepAM7n56efTfsmCp8pipWSQ=; b=azxLH+lxLokgz2
	hSdFWjtK1MZmYCeaWwDkHGpQ/avJMadRMLCW11mZer5WQkKz5YhEvSe3Vep8GgKRJo3Sh7ixUUdh2
	hgEA7FIBzzZHRb/V1PBe908bBGXWA/Vg5T+WCyxPE3YUWTN4ZpJ3FZXPvDFpGiKYWgrgehH7PaF1V
	mdzG89I3nNZrq/YYuFaWYzU8O8GadsL26Vfzv1Qb+q02PIdfJKwznLLCKXOFwjguR3e7NXCiOIaVy
	1leBWb3QkB1Bicgbf7r9H9VHMSu/X2dAvR5j94/6aVDfmC9ngkZELD6Wjcqa9A/21aw/k+ENCQQHs
	n0pT9NfW72DQ29kIxHAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXs0c-000463-Vd; Thu, 21 Nov 2019 19:20:54 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXs0a-00045Y-3m
 for kexec@lists.infradead.org; Thu, 21 Nov 2019 19:20:53 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xALJJJQD016050;
 Thu, 21 Nov 2019 19:20:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=FMe9CH50iHgEhd/aLJLPSs6busVQjdfTvxE3A2p4pd0=;
 b=Qyp6UKsDsKp73ZCYh0jBgZ9O1PQKpwwjobesLRy29j1owOy3/brqFZX7lAzCHW7+ICZN
 f5xAgw1Q7hDPEV4HHRFTkiSW/v3y3zFRt4LiLG5jAL7aZeZr+2BJ9YItnlHcX4zpqw4m
 pgORjc5WxeqXRiSH8l/HO1jpt/qzbI8tZWkZI+VMwyaD3Dia87TSNeN2XuWzkdQE0BCI
 tSHVa9sXYEQvvbVKhiGTwsU2zKhggSnos3ZNd4UQ4F5qV9EYJ5YZUQ5G6Xp3DYdPctvV
 bAfuhn9HOU32bw7bRQkDz1FE0xJ1FFlfRdgwIisvEdNR/RMTBaGkWJufVdZxbwfWySXZ 6Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2wa9rqxcc8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2019 19:20:43 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xALJISqF093518;
 Thu, 21 Nov 2019 19:20:43 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2wd46yvxr8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2019 19:20:42 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xALJKfOX027876;
 Thu, 21 Nov 2019 19:20:41 GMT
Received: from dhcp-10-154-114-246.vpn.oracle.com (/10.154.114.246)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 21 Nov 2019 11:20:41 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <4C21663E-4E3B-402D-96FD-BD7623C6628A@oracle.com>
Date: Thu, 21 Nov 2019 13:20:38 -0600
Message-Id: <F5504C62-6D51-4E37-AA35-269FEA7AE480@oracle.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
 <B71B3868-9A0B-46AD-8777-97A1599BFB91@oracle.com>
 <CACi5LpOF2FLrmXEyJ4FfjqJBxxt-np2+1V0EFK__EH=6ubFE0A@mail.gmail.com>
 <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
 <CACi5LpO9hRKotoMAgEQiLPEHWm7DO_NXWmTL1Wcfi3A0OyGJMQ@mail.gmail.com>
 <4C21663E-4E3B-402D-96FD-BD7623C6628A@oracle.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911210161
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911210161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_112052_281300_7B63AAA5 
X-CRM114-Status: GOOD (  16.53  )
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



> On Nov 21, 2019, at 10:59 AM, John Donnelly <john.p.donnelly@oracle.com> wrote:
> 
> 
> 
>> On Nov 21, 2019, at 10:32 AM, Bhupesh Sharma <bhsharma@redhat.com> wrote:
>> 
>>> On Wed, Nov 20, 2019 at 10:03 PM John Donnelly <john.p.donnelly@oracle.com> wrote:
>>> 
>>> Hi,
>>> 
>>> Recent test below
>>> This is your makedumpfile pulled from sourceforge .
>> 
>> Do you mean github? I don't remember pushing anything to sourceforge.
>> Please share the exact branch name and the source URL for the
>> makedumpfile you are using
> 
> Hi,   You are correct -  GitHub -    I used your url posted below ; I do not see the arch/arm64.c changes in the zip  version I downloaded . 
> 
> I am not a GUI/gitlab user. Can you please send a  tarball copy of your working makedumpfile   CLI  via email and I will verify it works.
> 


  Hi 

 
   I was able to fork and clone your work area .

 I can see makedumpfile works now ! 

 Fantastic ;;  Thank you for your patience !






_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
